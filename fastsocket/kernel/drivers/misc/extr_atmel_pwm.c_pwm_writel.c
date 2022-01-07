
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pwm {unsigned int base; } ;


 int __raw_writel (int ,unsigned int) ;

__attribute__((used)) static inline void pwm_writel(const struct pwm *p, unsigned offset, u32 val)
{
 __raw_writel(val, p->base + offset);
}
