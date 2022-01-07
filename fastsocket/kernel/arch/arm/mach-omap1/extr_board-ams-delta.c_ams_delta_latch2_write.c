
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef int __u16 ;


 scalar_t__ AMS_DELTA_LATCH2_VIRT ;
 int ams_delta_latch2_reg ;

void ams_delta_latch2_write(u16 mask, u16 value)
{
 ams_delta_latch2_reg &= ~mask;
 ams_delta_latch2_reg |= value;
 *(volatile __u16 *) AMS_DELTA_LATCH2_VIRT = ams_delta_latch2_reg;
}
