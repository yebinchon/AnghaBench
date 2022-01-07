
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct i2c_client {int dummy; } ;


 int ISL1208_REG_USR1 ;
 int ISL1208_USR_SECTION_LEN ;
 int isl1208_i2c_set_regs (struct i2c_client*,int ,int*,int) ;

__attribute__((used)) static int
isl1208_i2c_set_usr(struct i2c_client *client, u16 usr)
{
 u8 buf[ISL1208_USR_SECTION_LEN];

 buf[0] = usr & 0xff;
 buf[1] = (usr >> 8) & 0xff;

 return isl1208_i2c_set_regs(client, ISL1208_REG_USR1, buf,
        ISL1208_USR_SECTION_LEN);
}
