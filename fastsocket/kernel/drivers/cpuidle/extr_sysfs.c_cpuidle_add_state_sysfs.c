
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuidle_state_kobj {int kobj; int kobj_unregister; int * state; } ;
struct cpuidle_device {int state_count; struct cpuidle_state_kobj** kobjs; int kobj; int * states; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int KOBJ_ADD ;
 int cpuidle_free_state_kobj (struct cpuidle_device*,int) ;
 int init_completion (int *) ;
 int kfree (struct cpuidle_state_kobj*) ;
 int kobject_init_and_add (int *,int *,int *,char*,int) ;
 int kobject_uevent (int *,int ) ;
 int ktype_state_cpuidle ;
 struct cpuidle_state_kobj* kzalloc (int,int ) ;

int cpuidle_add_state_sysfs(struct cpuidle_device *device)
{
 int i, ret = -ENOMEM;
 struct cpuidle_state_kobj *kobj;


 for (i = 0; i < device->state_count; i++) {
  kobj = kzalloc(sizeof(struct cpuidle_state_kobj), GFP_KERNEL);
  if (!kobj)
   goto error_state;
  kobj->state = &device->states[i];
  init_completion(&kobj->kobj_unregister);

  ret = kobject_init_and_add(&kobj->kobj, &ktype_state_cpuidle, &device->kobj,
        "state%d", i);
  if (ret) {
   kfree(kobj);
   goto error_state;
  }
  kobject_uevent(&kobj->kobj, KOBJ_ADD);
  device->kobjs[i] = kobj;
 }

 return 0;

error_state:
 for (i = i - 1; i >= 0; i--)
  cpuidle_free_state_kobj(device, i);
 return ret;
}
