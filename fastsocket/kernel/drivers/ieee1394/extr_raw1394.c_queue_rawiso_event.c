
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int generation; int type; } ;
struct pending_request {TYPE_2__ req; struct file_info* file_info; } ;
struct file_info {int reqlists_lock; TYPE_1__* iso_handle; int host; } ;
struct TYPE_3__ {int overflows; } ;


 int GFP_ATOMIC ;
 int RAW1394_REQ_RAWISO_ACTIVITY ;
 struct pending_request* __alloc_pending_request (int ) ;
 int __queue_complete_req (struct pending_request*) ;
 int __rawiso_event_in_queue (struct file_info*) ;
 int atomic_inc (int *) ;
 int get_hpsb_generation (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void queue_rawiso_event(struct file_info *fi)
{
 unsigned long flags;

 spin_lock_irqsave(&fi->reqlists_lock, flags);


 if (!__rawiso_event_in_queue(fi)) {
  struct pending_request *req =
      __alloc_pending_request(GFP_ATOMIC);

  if (req) {
   req->file_info = fi;
   req->req.type = RAW1394_REQ_RAWISO_ACTIVITY;
   req->req.generation = get_hpsb_generation(fi->host);
   __queue_complete_req(req);
  } else {

   if (fi->iso_handle) {
    atomic_inc(&fi->iso_handle->overflows);
   }
  }
 }
 spin_unlock_irqrestore(&fi->reqlists_lock, flags);
}
