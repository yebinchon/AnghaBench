
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct notifier_block {int dummy; } ;
struct TYPE_2__ {scalar_t__ model; } ;


 scalar_t__ DISPLAY_MODEL_LCD ;
 int NOTIFY_DONE ;
 int NOTIFY_OK ;



 int cancel_delayed_work_sync (int *) ;
 int destroy_workqueue (int *) ;
 TYPE_1__ lcd_info ;
 int lcd_print (char*) ;
 int led_func_ptr (int) ;
 int led_task ;
 int * led_wq ;
 int notifier_disabled ;

__attribute__((used)) static int led_halt(struct notifier_block *nb, unsigned long event, void *buf)
{
 char *txt;

 if (notifier_disabled)
  return NOTIFY_OK;

 notifier_disabled = 1;
 switch (event) {
 case 128: txt = "SYSTEM RESTART";
    break;
 case 130: txt = "SYSTEM HALT";
    break;
 case 129: txt = "SYSTEM POWER OFF";
    break;
 default: return NOTIFY_DONE;
 }


 if (led_wq) {
  cancel_delayed_work_sync(&led_task);
  destroy_workqueue(led_wq);
  led_wq = ((void*)0);
 }

 if (lcd_info.model == DISPLAY_MODEL_LCD)
  lcd_print(txt);
 else
  if (led_func_ptr)
   led_func_ptr(0xff);

 return NOTIFY_OK;
}
