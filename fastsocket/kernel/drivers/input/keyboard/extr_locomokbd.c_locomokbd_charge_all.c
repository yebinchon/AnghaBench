
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ LOCOMO_KSC ;
 int locomo_writel (int,scalar_t__) ;

__attribute__((used)) static inline void locomokbd_charge_all(unsigned long membase)
{
 locomo_writel(0x00FF, membase + LOCOMO_KSC);
}
