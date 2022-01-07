
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PEX_SENSOR_TYPE_LEN ;
 int memcmp (char const*,int ,int) ;
 int power_sensor_sig ;

__attribute__((used)) static int is_power_sensor(const char *sensor_id, int len)
{
 if (len < PEX_SENSOR_TYPE_LEN)
  return 0;

 if (!memcmp(sensor_id, power_sensor_sig, PEX_SENSOR_TYPE_LEN))
  return 1;
 return 0;
}
