
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priority_group {int bypassed; } ;
struct multipath {int trigger_event; int lock; int * current_pg; int * current_pgpath; } ;


 int schedule_work (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void bypass_pg(struct multipath *m, struct priority_group *pg,
        int bypassed)
{
 unsigned long flags;

 spin_lock_irqsave(&m->lock, flags);

 pg->bypassed = bypassed;
 m->current_pgpath = ((void*)0);
 m->current_pg = ((void*)0);

 spin_unlock_irqrestore(&m->lock, flags);

 schedule_work(&m->trigger_event);
}
