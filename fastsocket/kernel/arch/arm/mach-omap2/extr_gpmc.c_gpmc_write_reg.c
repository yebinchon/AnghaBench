
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int __raw_writel (int ,scalar_t__) ;
 scalar_t__ gpmc_base ;

__attribute__((used)) static void gpmc_write_reg(int idx, u32 val)
{
 __raw_writel(val, gpmc_base + idx);
}
