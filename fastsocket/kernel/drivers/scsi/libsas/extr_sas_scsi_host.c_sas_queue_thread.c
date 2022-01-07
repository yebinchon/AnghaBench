
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sas_ha_struct {int dummy; } ;


 int TASK_INTERRUPTIBLE ;
 scalar_t__ kthread_should_stop () ;
 int sas_queue (struct sas_ha_struct*) ;
 int schedule () ;
 int set_current_state (int ) ;

__attribute__((used)) static int sas_queue_thread(void *_sas_ha)
{
 struct sas_ha_struct *sas_ha = _sas_ha;

 while (1) {
  set_current_state(TASK_INTERRUPTIBLE);
  schedule();
  sas_queue(sas_ha);
  if (kthread_should_stop())
   break;
 }

 return 0;
}
