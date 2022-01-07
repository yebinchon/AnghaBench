
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct davinci_i2c_dev {int dev; int terminate; } ;


 int DAVINCI_I2C_DRR_REG ;
 int DAVINCI_I2C_MDR_NACK ;
 int DAVINCI_I2C_MDR_REG ;
 int davinci_i2c_read_reg (struct davinci_i2c_dev*,int ) ;
 int davinci_i2c_write_reg (struct davinci_i2c_dev*,int ,int ) ;
 int dev_err (int ,char*) ;

__attribute__((used)) static void terminate_read(struct davinci_i2c_dev *dev)
{
 u16 w = davinci_i2c_read_reg(dev, DAVINCI_I2C_MDR_REG);
 w |= DAVINCI_I2C_MDR_NACK;
 davinci_i2c_write_reg(dev, DAVINCI_I2C_MDR_REG, w);


 davinci_i2c_read_reg(dev, DAVINCI_I2C_DRR_REG);
 if (!dev->terminate)
  dev_err(dev->dev, "RDR IRQ while no data requested\n");
}
