
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct zfcp_unit {TYPE_5__* port; int handle; int status; } ;
struct zfcp_qdio {int req_q_lock; TYPE_3__* adapter; } ;
struct zfcp_fsf_req {TYPE_8__* qtcb; int handler; struct zfcp_unit* data; int queue_req; } ;
struct qdio_buffer_element {int eflags; int sflags; } ;
struct TYPE_14__ {scalar_t__ req_handle; } ;
struct TYPE_15__ {TYPE_6__ support; } ;
struct TYPE_12__ {int port_handle; int lun_handle; } ;
struct TYPE_16__ {TYPE_7__ bottom; TYPE_4__ header; } ;
struct TYPE_13__ {int handle; TYPE_1__* adapter; } ;
struct TYPE_10__ {int scsi_abort; } ;
struct TYPE_11__ {TYPE_2__ pool; } ;
struct TYPE_9__ {struct zfcp_qdio* qdio; } ;


 int FSF_QTCB_ABORT_FCP_CMND ;
 scalar_t__ IS_ERR (struct zfcp_fsf_req*) ;
 int SBAL_EFLAGS_LAST_ENTRY ;
 int SBAL_SFLAGS0_TYPE_READ ;
 int ZFCP_SCSI_ER_TIMEOUT ;
 int ZFCP_STATUS_COMMON_UNBLOCKED ;
 int atomic_read (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 scalar_t__ unlikely (int) ;
 int zfcp_fsf_abort_fcp_command_handler ;
 struct zfcp_fsf_req* zfcp_fsf_req_create (struct zfcp_qdio*,int ,int ) ;
 int zfcp_fsf_req_free (struct zfcp_fsf_req*) ;
 scalar_t__ zfcp_fsf_req_sbal_get (struct zfcp_qdio*) ;
 int zfcp_fsf_req_send (struct zfcp_fsf_req*) ;
 int zfcp_fsf_start_timer (struct zfcp_fsf_req*,int ) ;
 struct qdio_buffer_element* zfcp_qdio_sbale_req (struct zfcp_qdio*,int *) ;

struct zfcp_fsf_req *zfcp_fsf_abort_fcp_command(unsigned long old_req_id,
      struct zfcp_unit *unit)
{
 struct qdio_buffer_element *sbale;
 struct zfcp_fsf_req *req = ((void*)0);
 struct zfcp_qdio *qdio = unit->port->adapter->qdio;

 spin_lock_bh(&qdio->req_q_lock);
 if (zfcp_fsf_req_sbal_get(qdio))
  goto out;
 req = zfcp_fsf_req_create(qdio, FSF_QTCB_ABORT_FCP_CMND,
      qdio->adapter->pool.scsi_abort);
 if (IS_ERR(req)) {
  req = ((void*)0);
  goto out;
 }

 if (unlikely(!(atomic_read(&unit->status) &
         ZFCP_STATUS_COMMON_UNBLOCKED)))
  goto out_error_free;

 sbale = zfcp_qdio_sbale_req(qdio, &req->queue_req);
 sbale[0].sflags |= SBAL_SFLAGS0_TYPE_READ;
 sbale[1].eflags |= SBAL_EFLAGS_LAST_ENTRY;

 req->data = unit;
 req->handler = zfcp_fsf_abort_fcp_command_handler;
 req->qtcb->header.lun_handle = unit->handle;
 req->qtcb->header.port_handle = unit->port->handle;
 req->qtcb->bottom.support.req_handle = (u64) old_req_id;

 zfcp_fsf_start_timer(req, ZFCP_SCSI_ER_TIMEOUT);
 if (!zfcp_fsf_req_send(req))
  goto out;

out_error_free:
 zfcp_fsf_req_free(req);
 req = ((void*)0);
out:
 spin_unlock_bh(&qdio->req_q_lock);
 return req;
}
