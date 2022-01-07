
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __raw_writel (unsigned long,unsigned int) ;
 unsigned int cp_intc_base ;

__attribute__((used)) static inline void cp_intc_write(unsigned long value, unsigned offset)
{
 __raw_writel(value, cp_intc_base + offset);
}
