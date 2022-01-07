
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int BACKLIGHT_KEY ;
 scalar_t__ applesmc_light ;
 int applesmc_lock ;
 int applesmc_write_key (int ,int ,int) ;
 int backlight_state ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int applesmc_pm_resume(struct device *dev)
{
 mutex_lock(&applesmc_lock);
 if (applesmc_light)
  applesmc_write_key(BACKLIGHT_KEY, backlight_state, 2);
 mutex_unlock(&applesmc_lock);
 return 0;
}
