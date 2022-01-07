
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mapped_device {int uevent_lock; int uevent_list; } ;
struct list_head {int dummy; } ;


 int list_add (struct list_head*,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void dm_uevent_add(struct mapped_device *md, struct list_head *elist)
{
 unsigned long flags;

 spin_lock_irqsave(&md->uevent_lock, flags);
 list_add(elist, &md->uevent_list);
 spin_unlock_irqrestore(&md->uevent_lock, flags);
}
