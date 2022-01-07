
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pwm {unsigned int base; } ;


 int __raw_readl (unsigned int) ;

__attribute__((used)) static inline u32 pwm_readl(const struct pwm *p, unsigned offset)
{
 return __raw_readl(p->base + offset);
}
