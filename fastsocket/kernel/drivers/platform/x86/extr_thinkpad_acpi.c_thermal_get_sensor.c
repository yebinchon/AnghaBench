
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmpi ;
typedef int s8 ;
typedef int s32 ;


 int EINVAL ;
 int EIO ;
 int ENOSYS ;





 int TP_EC_THERMAL_TMP0 ;
 int TP_EC_THERMAL_TMP8 ;
 int TP_EC_THERMAL_TMP_NA ;
 int acpi_ec_read (int,int*) ;
 int acpi_evalf (int ,int*,char*,char*) ;
 int ec_handle ;
 int snprintf (char*,int,char*,int) ;
 int thermal_read_mode ;

__attribute__((used)) static int thermal_get_sensor(int idx, s32 *value)
{
 int t;
 s8 tmp;
 char tmpi[5];

 t = TP_EC_THERMAL_TMP0;

 switch (thermal_read_mode) {
 case 128:
  if (idx <= 7) {
   if (!acpi_ec_read(t + idx, &tmp))
    return -EIO;
   *value = tmp * 1000;
   return 0;
  }
  break;

 case 131:
  if (idx <= 7) {
   snprintf(tmpi, sizeof(tmpi), "TMP%c", '0' + idx);
   if (!acpi_evalf(ec_handle, ((void*)0), "UPDT", "v"))
    return -EIO;
   if (!acpi_evalf(ec_handle, &t, tmpi, "d"))
    return -EIO;
   *value = (t - 2732) * 100;
   return 0;
  }
  break;

 case 132:
  if (idx <= 7) {
   snprintf(tmpi, sizeof(tmpi), "TMP%c", '0' + idx);
   if (!acpi_evalf(ec_handle, &t, tmpi, "d"))
    return -EIO;
   if (t > 127 || t < -127)
    t = TP_EC_THERMAL_TMP_NA;
   *value = t * 1000;
   return 0;
  }
  break;

 case 130:
 default:
  return -ENOSYS;
 }

 return -EINVAL;
}
