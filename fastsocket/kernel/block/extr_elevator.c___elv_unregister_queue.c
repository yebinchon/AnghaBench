
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elevator_queue {scalar_t__ registered; int kobj; } ;


 int KOBJ_REMOVE ;
 int kobject_del (int *) ;
 int kobject_uevent (int *,int ) ;

__attribute__((used)) static void __elv_unregister_queue(struct elevator_queue *e)
{
 kobject_uevent(&e->kobj, KOBJ_REMOVE);
 kobject_del(&e->kobj);
 e->registered = 0;
}
