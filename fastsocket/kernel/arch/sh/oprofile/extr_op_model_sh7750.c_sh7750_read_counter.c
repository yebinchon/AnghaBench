
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int PMCTRH (int) ;
 int PMCTRL (int) ;
 int __raw_readl (int ) ;

__attribute__((used)) static u64 sh7750_read_counter(int counter)
{
 return (u64)((u64)(__raw_readl(PMCTRH(counter)) & 0xffff) << 32) |
      __raw_readl(PMCTRL(counter));
}
