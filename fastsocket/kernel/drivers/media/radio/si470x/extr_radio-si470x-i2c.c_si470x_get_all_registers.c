
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct si470x_device {int * registers; TYPE_1__* client; } ;
struct i2c_msg {int member_2; void* member_3; int member_1; int member_0; } ;
struct TYPE_2__ {int adapter; int addr; } ;


 int EIO ;
 int I2C_M_RD ;
 size_t READ_INDEX (int) ;
 int READ_REG_NUM ;
 int __be16_to_cpu (int ) ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;

__attribute__((used)) static int si470x_get_all_registers(struct si470x_device *radio)
{
 int i;
 u16 buf[READ_REG_NUM];
 struct i2c_msg msgs[1] = {
  { radio->client->addr, I2C_M_RD, sizeof(u16) * READ_REG_NUM,
   (void *)buf },
 };

 if (i2c_transfer(radio->client->adapter, msgs, 1) != 1)
  return -EIO;

 for (i = 0; i < READ_REG_NUM; i++)
  radio->registers[i] = __be16_to_cpu(buf[READ_INDEX(i)]);

 return 0;
}
