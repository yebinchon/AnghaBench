
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 long SENSORS_LIMIT (long,int,int) ;
 int TMP401_CONFIG_RANGE ;

__attribute__((used)) static u8 tmp401_crit_temp_to_register(long temp, u8 config)
{
 if (config & TMP401_CONFIG_RANGE) {
  temp = SENSORS_LIMIT(temp, -64000, 191000);
  temp += 64000;
 } else
  temp = SENSORS_LIMIT(temp, 0, 127000);

 return (temp + 500) / 1000;
}
