
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct wm8350_led {scalar_t__ enabled; int dcdc; TYPE_1__ cdev; int isink; } ;


 int dev_err (int ,char*,int) ;
 int regulator_disable (int ) ;
 int regulator_enable (int ) ;

__attribute__((used)) static void wm8350_led_disable(struct wm8350_led *led)
{
 int ret;

 if (!led->enabled)
  return;

 ret = regulator_disable(led->dcdc);
 if (ret != 0) {
  dev_err(led->cdev.dev, "Failed to disable DCDC: %d\n", ret);
  return;
 }

 ret = regulator_disable(led->isink);
 if (ret != 0) {
  dev_err(led->cdev.dev, "Failed to disable ISINK: %d\n", ret);
  regulator_enable(led->dcdc);
  return;
 }

 led->enabled = 0;
}
