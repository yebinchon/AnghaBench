
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int upa_readl (int) ;

int starfire_hard_smp_processor_id(void)
{
 return upa_readl(0x1fff40000d0UL);
}
