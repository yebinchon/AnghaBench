
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pending_request {struct file_info* file_info; } ;
struct file_info {int reqlists_lock; } ;


 int __queue_complete_req (struct pending_request*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void queue_complete_req(struct pending_request *req)
{
 unsigned long flags;
 struct file_info *fi = req->file_info;

 spin_lock_irqsave(&fi->reqlists_lock, flags);
 __queue_complete_req(req);
 spin_unlock_irqrestore(&fi->reqlists_lock, flags);
}
