
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wf_sensor {int name; } ;
struct wf_control {int name; } ;
struct notifier_block {int dummy; } ;


 int DBG (char*,int ) ;



 int wf_smu_all_controls_ok ;
 int wf_smu_all_sensors_ok ;
 int wf_smu_new_control (void*) ;
 int wf_smu_new_sensor (void*) ;
 int wf_smu_readjust ;
 int wf_smu_tick () ;

__attribute__((used)) static int wf_smu_notify(struct notifier_block *self,
          unsigned long event, void *data)
{
 switch(event) {
 case 130:
  DBG("wf: new control %s detected\n",
      ((struct wf_control *)data)->name);
  wf_smu_new_control(data);
  wf_smu_readjust = 1;
  break;
 case 129:
  DBG("wf: new sensor %s detected\n",
      ((struct wf_sensor *)data)->name);
  wf_smu_new_sensor(data);
  break;
 case 128:
  if (wf_smu_all_controls_ok && wf_smu_all_sensors_ok)
   wf_smu_tick();
 }

 return 0;
}
