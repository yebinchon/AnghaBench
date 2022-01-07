
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cx231xx {int dummy; } ;


 int CH_PWR_CTRL1 ;
 int CH_PWR_CTRL2 ;
 int I2S_BLK_DEVICE_ADDRESS ;
 int cx231xx_read_i2c_data (struct cx231xx*,int ,int ,int,int*,int) ;
 int cx231xx_write_i2c_data (struct cx231xx*,int ,int ,int,int,int) ;

int cx231xx_i2s_blk_initialize(struct cx231xx *dev)
{
 int status = 0;
 u32 value;

 status = cx231xx_read_i2c_data(dev, I2S_BLK_DEVICE_ADDRESS,
           CH_PWR_CTRL1, 1, &value, 1);

 value |= 0x80;
 status = cx231xx_write_i2c_data(dev, I2S_BLK_DEVICE_ADDRESS,
     CH_PWR_CTRL1, 1, value, 1);

 status = cx231xx_write_i2c_data(dev, I2S_BLK_DEVICE_ADDRESS,
     CH_PWR_CTRL2, 1, 0x00, 1);

 return status;
}
