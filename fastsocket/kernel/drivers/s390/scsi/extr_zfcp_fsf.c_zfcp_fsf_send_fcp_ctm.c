
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


typedef int u8 ;
struct zfcp_unit {int device; TYPE_5__* port; int handle; int status; } ;
struct zfcp_qdio {int req_q_lock; TYPE_3__* adapter; } ;
struct zfcp_fsf_req {TYPE_8__* qtcb; int queue_req; int handler; struct zfcp_unit* data; int status; } ;
struct qdio_buffer_element {int eflags; int sflags; } ;
struct fcp_cmnd {int dummy; } ;
struct TYPE_14__ {int fcp_cmnd; int fcp_cmnd_length; int service_class; int data_direction; } ;
struct TYPE_15__ {TYPE_6__ io; } ;
struct TYPE_12__ {int port_handle; int lun_handle; } ;
struct TYPE_16__ {TYPE_7__ bottom; TYPE_4__ header; } ;
struct TYPE_13__ {int handle; TYPE_1__* adapter; } ;
struct TYPE_10__ {int scsi_req; } ;
struct TYPE_11__ {TYPE_2__ pool; } ;
struct TYPE_9__ {struct zfcp_qdio* qdio; } ;


 int FCP_CMND_LEN ;
 int FSF_CLASS_3 ;
 int FSF_DATADIR_CMND ;
 int FSF_QTCB_FCP_CMND ;
 scalar_t__ IS_ERR (struct zfcp_fsf_req*) ;
 int SBAL_EFLAGS_LAST_ENTRY ;
 int SBAL_SFLAGS0_TYPE_WRITE ;
 int ZFCP_SCSI_ER_TIMEOUT ;
 int ZFCP_STATUS_COMMON_UNBLOCKED ;
 int ZFCP_STATUS_FSFREQ_TASK_MANAGEMENT ;
 int atomic_read (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 scalar_t__ unlikely (int) ;
 int zfcp_fc_fcp_tm (struct fcp_cmnd*,int ,int ) ;
 struct zfcp_fsf_req* zfcp_fsf_req_create (struct zfcp_qdio*,int ,int ) ;
 int zfcp_fsf_req_free (struct zfcp_fsf_req*) ;
 scalar_t__ zfcp_fsf_req_sbal_get (struct zfcp_qdio*) ;
 int zfcp_fsf_req_send (struct zfcp_fsf_req*) ;
 int zfcp_fsf_send_fcp_command_handler ;
 int zfcp_fsf_start_timer (struct zfcp_fsf_req*,int ) ;
 struct qdio_buffer_element* zfcp_qdio_sbale_req (struct zfcp_qdio*,int *) ;

struct zfcp_fsf_req *zfcp_fsf_send_fcp_ctm(struct zfcp_unit *unit, u8 tm_flags)
{
 struct qdio_buffer_element *sbale;
 struct zfcp_fsf_req *req = ((void*)0);
 struct fcp_cmnd *fcp_cmnd;
 struct zfcp_qdio *qdio = unit->port->adapter->qdio;

 if (unlikely(!(atomic_read(&unit->status) &
         ZFCP_STATUS_COMMON_UNBLOCKED)))
  return ((void*)0);

 spin_lock_bh(&qdio->req_q_lock);
 if (zfcp_fsf_req_sbal_get(qdio))
  goto out;

 req = zfcp_fsf_req_create(qdio, FSF_QTCB_FCP_CMND,
      qdio->adapter->pool.scsi_req);

 if (IS_ERR(req)) {
  req = ((void*)0);
  goto out;
 }

 req->status |= ZFCP_STATUS_FSFREQ_TASK_MANAGEMENT;
 req->data = unit;
 req->handler = zfcp_fsf_send_fcp_command_handler;
 req->qtcb->header.lun_handle = unit->handle;
 req->qtcb->header.port_handle = unit->port->handle;
 req->qtcb->bottom.io.data_direction = FSF_DATADIR_CMND;
 req->qtcb->bottom.io.service_class = FSF_CLASS_3;
 req->qtcb->bottom.io.fcp_cmnd_length = FCP_CMND_LEN;

 sbale = zfcp_qdio_sbale_req(qdio, &req->queue_req);
 sbale[0].sflags |= SBAL_SFLAGS0_TYPE_WRITE;
 sbale[1].eflags |= SBAL_EFLAGS_LAST_ENTRY;

 fcp_cmnd = (struct fcp_cmnd *) &req->qtcb->bottom.io.fcp_cmnd;
 zfcp_fc_fcp_tm(fcp_cmnd, unit->device, tm_flags);

 zfcp_fsf_start_timer(req, ZFCP_SCSI_ER_TIMEOUT);
 if (!zfcp_fsf_req_send(req))
  goto out;

 zfcp_fsf_req_free(req);
 req = ((void*)0);
out:
 spin_unlock_bh(&qdio->req_q_lock);
 return req;
}
