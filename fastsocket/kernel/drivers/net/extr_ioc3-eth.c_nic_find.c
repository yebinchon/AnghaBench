
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u64 ;
struct ioc3 {int dummy; } ;


 int nic_read_bit (struct ioc3*) ;
 int nic_reset (struct ioc3*) ;
 int nic_write_bit (struct ioc3*,int) ;
 int nic_write_byte (struct ioc3*,int) ;
 int printk (char*) ;

__attribute__((used)) static u64 nic_find(struct ioc3 *ioc3, int *last)
{
 int a, b, index, disc;
 u64 address = 0;

 nic_reset(ioc3);

 nic_write_byte(ioc3, 0xf0);


 for (index = 0, disc = 0; index < 64; index++) {
  a = nic_read_bit(ioc3);
  b = nic_read_bit(ioc3);

  if (a && b) {
   printk("NIC search failed (not fatal).\n");
   *last = 0;
   return 0;
  }

  if (!a && !b) {
   if (index == *last) {
    address |= 1UL << index;
   } else if (index > *last) {
    address &= ~(1UL << index);
    disc = index;
   } else if ((address & (1UL << index)) == 0)
    disc = index;
   nic_write_bit(ioc3, address & (1UL << index));
   continue;
  } else {
   if (a)
    address |= 1UL << index;
   else
    address &= ~(1UL << index);
   nic_write_bit(ioc3, a);
   continue;
  }
 }

 *last = disc;

 return address;
}
