
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int count; struct qdio_buffer** sbal; } ;
struct zfcp_qdio {TYPE_3__ resp_q; struct zfcp_adapter* adapter; } ;
struct TYPE_5__ {int sbal_response; int qdio_inb_usage; } ;
struct zfcp_fsf_req {TYPE_2__ queue_req; int list; } ;
struct zfcp_adapter {int req_list_lock; TYPE_1__* ccw_device; } ;
struct qdio_buffer_element {int eflags; scalar_t__ addr; } ;
struct qdio_buffer {struct qdio_buffer_element* element; } ;
struct TYPE_4__ {int dev; } ;


 int QDIO_MAX_ELEMENTS_PER_BUFFER ;
 int SBAL_EFLAGS_LAST_ENTRY ;
 int atomic_read (int *) ;
 int dev_name (int *) ;
 scalar_t__ likely (int) ;
 int list_del (int *) ;
 int panic (char*,unsigned long,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int zfcp_fsf_req_complete (struct zfcp_fsf_req*) ;
 int zfcp_qdio_siosl (struct zfcp_adapter*) ;
 struct zfcp_fsf_req* zfcp_reqlist_find (struct zfcp_adapter*,unsigned long) ;

void zfcp_fsf_reqid_check(struct zfcp_qdio *qdio, int sbal_idx)
{
 struct zfcp_adapter *adapter = qdio->adapter;
 struct qdio_buffer *sbal = qdio->resp_q.sbal[sbal_idx];
 struct qdio_buffer_element *sbale;
 struct zfcp_fsf_req *fsf_req;
 unsigned long flags, req_id;
 int idx;

 for (idx = 0; idx < QDIO_MAX_ELEMENTS_PER_BUFFER; idx++) {

  sbale = &sbal->element[idx];
  req_id = (unsigned long) sbale->addr;
  spin_lock_irqsave(&adapter->req_list_lock, flags);
  fsf_req = zfcp_reqlist_find(adapter, req_id);

  if (!fsf_req) {




   zfcp_qdio_siosl(adapter);
   panic("error: unknown req_id (%lx) on adapter %s.\n",
         req_id, dev_name(&adapter->ccw_device->dev));
  }

  list_del(&fsf_req->list);
  spin_unlock_irqrestore(&adapter->req_list_lock, flags);

  fsf_req->queue_req.sbal_response = sbal_idx;
  fsf_req->queue_req.qdio_inb_usage =
   atomic_read(&qdio->resp_q.count);
  zfcp_fsf_req_complete(fsf_req);

  if (likely(sbale->eflags & SBAL_EFLAGS_LAST_ENTRY))
   break;
 }
}
