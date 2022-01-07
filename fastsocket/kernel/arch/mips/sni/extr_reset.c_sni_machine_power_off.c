
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PCIMT_CSWCSM ;

void sni_machine_power_off(void)
{
 *(volatile unsigned char *)PCIMT_CSWCSM = 0xfd;
}
