
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ LOCOMO_KSC ;
 int locomo_writel (unsigned short,scalar_t__) ;

__attribute__((used)) static inline void locomokbd_reset_col(unsigned long membase, int col)
{
 unsigned short nbset;

 nbset = ((0xFF & ~(1 << col)) << 8) + 0xFF;
 locomo_writel(nbset, membase + LOCOMO_KSC);
}
