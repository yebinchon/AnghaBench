
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ IO_ADDRESS (int ) ;
 int SYSCTRL_BASE_ADDR ;
 scalar_t__ SYS_CHIP_ID ;
 int __raw_readl (scalar_t__) ;
 int cpu_partnumber ;
 int cpu_silicon_rev ;

__attribute__((used)) static void query_silicon_parameter(void)
{
 u32 val;





 val = __raw_readl(IO_ADDRESS(SYSCTRL_BASE_ADDR) + SYS_CHIP_ID);

 cpu_silicon_rev = (int)(val >> 28);
 cpu_partnumber = (int)((val >> 12) & 0xFFFF);
}
