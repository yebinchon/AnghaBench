
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcast_member {int list; struct mcast_group* group; } ;
struct mcast_group {scalar_t__ state; int lock; int work; int refcount; int pending_list; } ;


 scalar_t__ MCAST_BUSY ;
 scalar_t__ MCAST_IDLE ;
 int atomic_inc (int *) ;
 int list_add_tail (int *,int *) ;
 int mcast_wq ;
 int queue_work (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void queue_join(struct mcast_member *member)
{
 struct mcast_group *group = member->group;
 unsigned long flags;

 spin_lock_irqsave(&group->lock, flags);
 list_add_tail(&member->list, &group->pending_list);
 if (group->state == MCAST_IDLE) {
  group->state = MCAST_BUSY;
  atomic_inc(&group->refcount);
  queue_work(mcast_wq, &group->work);
 }
 spin_unlock_irqrestore(&group->lock, flags);
}
