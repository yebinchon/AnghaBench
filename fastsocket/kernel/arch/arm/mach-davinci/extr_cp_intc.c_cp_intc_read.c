
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int __raw_readl (unsigned int) ;
 unsigned int cp_intc_base ;

__attribute__((used)) static inline unsigned int cp_intc_read(unsigned offset)
{
 return __raw_readl(cp_intc_base + offset);
}
