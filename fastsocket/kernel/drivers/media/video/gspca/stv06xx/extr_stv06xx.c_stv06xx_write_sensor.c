
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct sd {TYPE_1__* sensor; } ;
struct TYPE_2__ {int i2c_len; } ;


 int stv06xx_write_sensor_bytes (struct sd*,int *,int) ;
 int stv06xx_write_sensor_words (struct sd*,int *,int) ;

int stv06xx_write_sensor(struct sd *sd, u8 address, u16 value)
{
 if (sd->sensor->i2c_len == 2) {
  u16 data[2] = { address, value };
  return stv06xx_write_sensor_words(sd, data, 1);
 } else {
  u8 data[2] = { address, value };
  return stv06xx_write_sensor_bytes(sd, data, 1);
 }
}
