
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pcf50633 {int dev; int i2c_client; } ;


 int dev_err (int ,char*,int,int ) ;
 int i2c_smbus_read_i2c_block_data (int ,int ,int,int *) ;

__attribute__((used)) static int __pcf50633_read(struct pcf50633 *pcf, u8 reg, int num, u8 *data)
{
 int ret;

 ret = i2c_smbus_read_i2c_block_data(pcf->i2c_client, reg,
    num, data);
 if (ret < 0)
  dev_err(pcf->dev, "Error reading %d regs at %d\n", num, reg);

 return ret;
}
