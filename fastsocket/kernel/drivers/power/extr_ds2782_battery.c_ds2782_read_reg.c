
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ds2782_info {TYPE_1__* client; } ;
struct TYPE_2__ {int dev; } ;


 int dev_err (int *,char*) ;
 int i2c_smbus_read_byte_data (TYPE_1__*,int) ;

__attribute__((used)) static inline int ds2782_read_reg(struct ds2782_info *info, int reg, u8 *val)
{
 int ret;

 ret = i2c_smbus_read_byte_data(info->client, reg);
 if (ret < 0) {
  dev_err(&info->client->dev, "register read failed\n");
  return ret;
 }

 *val = ret;
 return 0;
}
