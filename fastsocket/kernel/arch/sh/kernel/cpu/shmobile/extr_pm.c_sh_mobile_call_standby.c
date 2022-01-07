
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long ILRAM_BASE ;

void sh_mobile_call_standby(unsigned long mode)
{
 void *onchip_mem = (void *)ILRAM_BASE;
 void (*standby_onchip_mem)(unsigned long, unsigned long) = onchip_mem;


 standby_onchip_mem(mode, ILRAM_BASE);
}
