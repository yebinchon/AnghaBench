
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct cx231xx {int dummy; } ;


 int AFE_DEVICE_ADDRESS ;
 int cx231xx_write_i2c_data (struct cx231xx*,int ,int ,int,int ,int) ;

__attribute__((used)) static int afe_write_byte(struct cx231xx *dev, u16 saddr, u8 data)
{
 return cx231xx_write_i2c_data(dev, AFE_DEVICE_ADDRESS,
     saddr, 2, data, 1);
}
