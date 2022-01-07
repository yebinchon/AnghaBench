
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpuidle_device {TYPE_1__** kobjs; } ;
struct TYPE_2__ {int kobj_unregister; int kobj; } ;


 int kfree (TYPE_1__*) ;
 int kobject_put (int *) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static void inline cpuidle_free_state_kobj(struct cpuidle_device *device, int i)
{
 kobject_put(&device->kobjs[i]->kobj);
 wait_for_completion(&device->kobjs[i]->kobj_unregister);
 kfree(device->kobjs[i]);
 device->kobjs[i] = ((void*)0);
}
