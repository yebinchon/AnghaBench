
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ioc3 {int dummy; } ;


 int nic_read_bit (struct ioc3*) ;

__attribute__((used)) static u32 nic_read_byte(struct ioc3 *ioc3)
{
 u32 result = 0;
 int i;

 for (i = 0; i < 8; i++)
  result = (result >> 1) | (nic_read_bit(ioc3) << 7);

 return result;
}
