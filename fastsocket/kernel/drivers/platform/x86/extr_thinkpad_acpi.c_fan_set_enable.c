
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int fan_ctrl_status_undef; } ;


 int EIO ;
 int ENXIO ;
 int EPERM ;
 int ERESTARTSYS ;
 int TPACPI_DBG_FAN ;



 int TP_EC_FAN_AUTO ;
 int acpi_ec_write (int ,int) ;
 int acpi_evalf (int ,int *,int *,char*,int) ;
 int fan_control_access_mode ;
 int fan_control_allowed ;
 int fan_get_status (int*) ;
 int fan_mutex ;
 int fan_status_offset ;
 scalar_t__ mutex_lock_killable (int *) ;
 int mutex_unlock (int *) ;
 int sfan_handle ;
 TYPE_1__ tp_features ;
 int vdbg_printk (int ,char*,int) ;

__attribute__((used)) static int fan_set_enable(void)
{
 u8 s;
 int rc;

 if (!fan_control_allowed)
  return -EPERM;

 if (mutex_lock_killable(&fan_mutex))
  return -ERESTARTSYS;

 switch (fan_control_access_mode) {
 case 130:
 case 128:
  rc = fan_get_status(&s);
  if (rc < 0)
   break;


  if (s != 7) {
   s &= 0x07;
   s |= TP_EC_FAN_AUTO | 4;
  }

  if (!acpi_ec_write(fan_status_offset, s))
   rc = -EIO;
  else {
   tp_features.fan_ctrl_status_undef = 0;
   rc = 0;
  }
  break;

 case 129:
  rc = fan_get_status(&s);
  if (rc < 0)
   break;

  s &= 0x07;


  s |= 4;

  if (!acpi_evalf(sfan_handle, ((void*)0), ((void*)0), "vd", s))
   rc = -EIO;
  else
   rc = 0;
  break;

 default:
  rc = -ENXIO;
 }

 mutex_unlock(&fan_mutex);

 if (!rc)
  vdbg_printk(TPACPI_DBG_FAN,
   "fan control: set fan control register to 0x%02x\n",
   s);
 return rc;
}
