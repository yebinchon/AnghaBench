
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kobj; } ;
struct memory_block {unsigned long state; int start_phys_index; int end_phys_index; int state_mutex; TYPE_1__ sysdev; } ;


 int EINVAL ;
 int KOBJ_OFFLINE ;
 int KOBJ_ONLINE ;
 unsigned long MEM_GOING_OFFLINE ;


 int kobject_uevent (int *,int ) ;
 int memory_section_action (int,unsigned long) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int memory_block_change_state(struct memory_block *mem,
  unsigned long to_state, unsigned long from_state_req)
{
 int i, ret = 0;
 mutex_lock(&mem->state_mutex);

 if (mem->state != from_state_req) {
  ret = -EINVAL;
  goto out;
 }

 if (to_state == 129)
  mem->state = MEM_GOING_OFFLINE;

 for (i = mem->start_phys_index; i <= mem->end_phys_index; i++) {
  ret = memory_section_action(i, to_state);
  if (ret)
   break;
 }

 if (ret) {
  for (i = mem->start_phys_index; i <= mem->end_phys_index; i++)
   memory_section_action(i, from_state_req);

  mem->state = from_state_req;
  goto out;
 }

 mem->state = to_state;
 switch (mem->state) {
 case 129:
  kobject_uevent(&mem->sysdev.kobj, KOBJ_OFFLINE);
  break;
 case 128:
  kobject_uevent(&mem->sysdev.kobj, KOBJ_ONLINE);
  break;
 default:
  break;
 }
out:
 mutex_unlock(&mem->state_mutex);
 return ret;
}
