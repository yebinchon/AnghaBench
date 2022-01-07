
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int __u8 ;


 scalar_t__ AMS_DELTA_LATCH1_VIRT ;
 int ams_delta_latch1_reg ;

void ams_delta_latch1_write(u8 mask, u8 value)
{
 ams_delta_latch1_reg &= ~mask;
 ams_delta_latch1_reg |= value;
 *(volatile __u8 *) AMS_DELTA_LATCH1_VIRT = ams_delta_latch1_reg;
}
