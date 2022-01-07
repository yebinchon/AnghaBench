
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
struct cx231xx {int dummy; } ;


 int VERVE_I2C_ADDRESS ;
 int cx231xx_read_i2c_data (struct cx231xx*,int ,scalar_t__,int,scalar_t__*,int) ;

__attribute__((used)) static int verve_read_byte(struct cx231xx *dev, u8 saddr, u8 *data)
{
 int status;
 u32 temp = 0;

 status = cx231xx_read_i2c_data(dev, VERVE_I2C_ADDRESS,
     saddr, 1, &temp, 1);
 *data = (u8) temp;
 return status;
}
