
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 int __raw_writel (scalar_t__,scalar_t__) ;
 scalar_t__ ccdc_base_addr ;

__attribute__((used)) static inline void regw(u32 val, u32 offset)
{
 __raw_writel(val, ccdc_base_addr + offset);
}
