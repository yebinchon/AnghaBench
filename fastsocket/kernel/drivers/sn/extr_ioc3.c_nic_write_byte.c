
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ioc3_driver_data {int dummy; } ;


 int nic_write_bit (struct ioc3_driver_data*,int) ;

__attribute__((used)) static void nic_write_byte(struct ioc3_driver_data *idd, int byte)
{
 int i, bit;

 for (i = 8; i; i--) {
  bit = byte & 1;
  byte >>= 1;

  nic_write_bit(idd, bit);
 }
}
