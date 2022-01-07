
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int __raw_readl (scalar_t__) ;
 scalar_t__ gpmc_base ;

__attribute__((used)) static u32 gpmc_read_reg(int idx)
{
 return __raw_readl(gpmc_base + idx);
}
