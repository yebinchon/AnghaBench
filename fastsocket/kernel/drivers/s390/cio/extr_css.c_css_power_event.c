
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct channel_subsystem {int mutex; int cm_enabled; } ;


 int GFP_DMA ;
 int GFP_KERNEL ;
 int NOTIFY_BAD ;
 int NOTIFY_DONE ;




 int __MAX_CSSID ;
 int __chsc_do_secm (struct channel_subsystem*,int,void*) ;
 struct channel_subsystem** channel_subsystems ;
 int css_schedule_reprobe () ;
 int free_page (unsigned long) ;
 scalar_t__ get_zeroed_page (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int css_power_event(struct notifier_block *this, unsigned long event,
      void *ptr)
{
 void *secm_area;
 int ret, i;

 switch (event) {
 case 131:
 case 128:
  ret = NOTIFY_DONE;
  for (i = 0; i <= __MAX_CSSID; i++) {
   struct channel_subsystem *css;

   css = channel_subsystems[i];
   mutex_lock(&css->mutex);
   if (!css->cm_enabled) {
    mutex_unlock(&css->mutex);
    continue;
   }
   secm_area = (void *)get_zeroed_page(GFP_KERNEL |
           GFP_DMA);
   if (secm_area) {
    if (__chsc_do_secm(css, 0, secm_area))
     ret = NOTIFY_BAD;
    free_page((unsigned long)secm_area);
   } else
    ret = NOTIFY_BAD;

   mutex_unlock(&css->mutex);
  }
  break;
 case 130:
 case 129:
  ret = NOTIFY_DONE;
  for (i = 0; i <= __MAX_CSSID; i++) {
   struct channel_subsystem *css;

   css = channel_subsystems[i];
   mutex_lock(&css->mutex);
   if (!css->cm_enabled) {
    mutex_unlock(&css->mutex);
    continue;
   }
   secm_area = (void *)get_zeroed_page(GFP_KERNEL |
           GFP_DMA);
   if (secm_area) {
    if (__chsc_do_secm(css, 1, secm_area))
     ret = NOTIFY_BAD;
    free_page((unsigned long)secm_area);
   } else
    ret = NOTIFY_BAD;

   mutex_unlock(&css->mutex);
  }

  css_schedule_reprobe();
  break;
 default:
  ret = NOTIFY_DONE;
 }
 return ret;

}
