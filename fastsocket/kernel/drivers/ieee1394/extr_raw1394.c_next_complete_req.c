
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pending_request {int dummy; } ;
struct file_info {int reqlists_lock; } ;


 struct pending_request* __next_complete_req (struct file_info*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static struct pending_request *next_complete_req(struct file_info *fi)
{
 unsigned long flags;
 struct pending_request *req;

 spin_lock_irqsave(&fi->reqlists_lock, flags);
 req = __next_complete_req(fi);
 spin_unlock_irqrestore(&fi->reqlists_lock, flags);
 return req;
}
