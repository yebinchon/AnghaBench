
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ioc3_driver_data {int dummy; } ;


 int nic_read_bit (struct ioc3_driver_data*) ;
 int nic_reset (struct ioc3_driver_data*) ;
 int nic_write_bit (struct ioc3_driver_data*,unsigned long) ;
 int nic_write_byte (struct ioc3_driver_data*,int) ;

__attribute__((used)) static void nic_addr(struct ioc3_driver_data *idd, unsigned long addr)
{
 int index;

 nic_reset(idd);
 nic_write_byte(idd, 0xF0);
 for (index = 0; index < 64; index++) {
  nic_read_bit(idd);
  nic_read_bit(idd);
  nic_write_bit(idd, (addr>>index)&1);
 }
}
