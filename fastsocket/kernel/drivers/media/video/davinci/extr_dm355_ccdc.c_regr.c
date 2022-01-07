
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ __raw_readl (scalar_t__) ;
 scalar_t__ ccdc_base_addr ;

__attribute__((used)) static inline u32 regr(u32 offset)
{
 return __raw_readl(ccdc_base_addr + offset);
}
