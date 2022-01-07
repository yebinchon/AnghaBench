
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ips_driver {int dummy; } ;


 int THM_CEC ;
 int thm_readl (int ) ;

__attribute__((used)) static u32 get_cpu_power(struct ips_driver *ips, u32 *last, int period)
{
 u32 val;
 u32 ret;





 val = thm_readl(THM_CEC);


 ret = (((val - *last) * 1000) / period);
 ret = (ret * 1000) / 65535;
 *last = val;

 return 0;
}
