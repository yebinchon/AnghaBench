
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ioc3_driver_data {int dummy; } ;


 int nic_read_bit (struct ioc3_driver_data*) ;

__attribute__((used)) static unsigned nic_read_byte(struct ioc3_driver_data *idd)
{
 unsigned result = 0;
 int i;

 for (i = 0; i < 8; i++)
  result = (result >> 1) | (nic_read_bit(idd) << 7);

 return result;
}
