
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int count; } ;
struct zfcp_qdio {TYPE_1__ req_q; } ;
struct TYPE_4__ {int qdio_outb_usage; } ;
struct zfcp_fsf_req {int timer; TYPE_2__ queue_req; int issued; int list; int req_id; int * qtcb; struct zfcp_adapter* adapter; } ;
struct zfcp_adapter {int req_no; int fsf_req_seq_no; int req_list_lock; int * req_list; struct zfcp_qdio* qdio; } ;


 int EIO ;
 int atomic_read (int *) ;
 int del_timer (int *) ;
 int get_clock () ;
 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int zfcp_erp_adapter_reopen (struct zfcp_adapter*,int ,char*,struct zfcp_fsf_req*) ;
 scalar_t__ zfcp_qdio_send (struct zfcp_qdio*,TYPE_2__*) ;
 scalar_t__ zfcp_reqlist_find_safe (struct zfcp_adapter*,struct zfcp_fsf_req*) ;
 int zfcp_reqlist_hash (int ) ;
 int zfcp_reqlist_remove (struct zfcp_adapter*,struct zfcp_fsf_req*) ;

__attribute__((used)) static int zfcp_fsf_req_send(struct zfcp_fsf_req *req)
{
 struct zfcp_adapter *adapter = req->adapter;
 struct zfcp_qdio *qdio = adapter->qdio;
 unsigned long flags;
 int idx;
 int with_qtcb = (req->qtcb != ((void*)0));


 spin_lock_irqsave(&adapter->req_list_lock, flags);
 idx = zfcp_reqlist_hash(req->req_id);
 list_add_tail(&req->list, &adapter->req_list[idx]);
 spin_unlock_irqrestore(&adapter->req_list_lock, flags);

 req->queue_req.qdio_outb_usage = atomic_read(&qdio->req_q.count);
 req->issued = get_clock();
 if (zfcp_qdio_send(qdio, &req->queue_req)) {
  del_timer(&req->timer);
  spin_lock_irqsave(&adapter->req_list_lock, flags);

  if (zfcp_reqlist_find_safe(adapter, req))
   zfcp_reqlist_remove(adapter, req);
  spin_unlock_irqrestore(&adapter->req_list_lock, flags);
  zfcp_erp_adapter_reopen(adapter, 0, "fsrs__1", req);
  return -EIO;
 }


 if (with_qtcb)
  adapter->fsf_req_seq_no++;
 adapter->req_no++;

 return 0;
}
