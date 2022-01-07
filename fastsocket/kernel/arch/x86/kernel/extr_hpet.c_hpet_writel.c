
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ hpet_virt_address ;
 int writel (unsigned long,scalar_t__) ;

__attribute__((used)) static inline void hpet_writel(unsigned long d, unsigned long a)
{
 writel(d, hpet_virt_address + a);
}
