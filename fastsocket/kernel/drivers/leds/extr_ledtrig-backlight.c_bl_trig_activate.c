
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct led_classdev {int dev; int brightness; struct bl_trig_notifier* trigger_data; } ;
struct TYPE_2__ {int notifier_call; } ;
struct bl_trig_notifier {TYPE_1__ notifier; int old_status; int brightness; struct led_classdev* led; } ;


 int GFP_KERNEL ;
 int UNBLANK ;
 int dev_err (int ,char*) ;
 int fb_notifier_callback ;
 int fb_register_client (TYPE_1__*) ;
 struct bl_trig_notifier* kzalloc (int,int ) ;

__attribute__((used)) static void bl_trig_activate(struct led_classdev *led)
{
 int ret;

 struct bl_trig_notifier *n;

 n = kzalloc(sizeof(struct bl_trig_notifier), GFP_KERNEL);
 led->trigger_data = n;
 if (!n) {
  dev_err(led->dev, "unable to allocate backlight trigger\n");
  return;
 }

 n->led = led;
 n->brightness = led->brightness;
 n->old_status = UNBLANK;
 n->notifier.notifier_call = fb_notifier_callback;

 ret = fb_register_client(&n->notifier);
 if (ret)
  dev_err(led->dev, "unable to register backlight trigger\n");
}
