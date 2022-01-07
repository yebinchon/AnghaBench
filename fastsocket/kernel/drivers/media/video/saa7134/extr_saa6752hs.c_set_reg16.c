
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int u8 ;
struct i2c_client {int dummy; } ;


 int i2c_master_send (struct i2c_client*,int*,int) ;

__attribute__((used)) static inline void set_reg16(struct i2c_client *client, uint8_t reg, uint16_t val)
{
 u8 buf[3];

 buf[0] = reg;
 buf[1] = val >> 8;
 buf[2] = val & 0xff;
 i2c_master_send(client, buf, 3);
}
