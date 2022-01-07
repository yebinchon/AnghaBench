
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct backlight_device {int dummy; } ;


 int TP_EC_BACKLIGHT_LVLMSK ;
 int brightness_mutex ;
 int mutex_lock_killable (int *) ;
 int mutex_unlock (int *) ;
 int tpacpi_brightness_get_raw (int*) ;

__attribute__((used)) static int brightness_get(struct backlight_device *bd)
{
 int status, res;

 res = mutex_lock_killable(&brightness_mutex);
 if (res < 0)
  return 0;

 res = tpacpi_brightness_get_raw(&status);

 mutex_unlock(&brightness_mutex);

 if (res < 0)
  return 0;

 return status & TP_EC_BACKLIGHT_LVLMSK;
}
