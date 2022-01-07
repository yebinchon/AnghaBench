
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BONITO_BONGENCFG ;

void mach_prepare_reboot(void)
{
 BONITO_BONGENCFG &= ~(1 << 2);
 BONITO_BONGENCFG |= (1 << 2);
}
