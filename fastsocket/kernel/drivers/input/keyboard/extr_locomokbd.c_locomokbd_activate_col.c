
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ LOCOMO_KSC ;
 int locomo_writel (unsigned short,scalar_t__) ;

__attribute__((used)) static inline void locomokbd_activate_col(unsigned long membase, int col)
{
 unsigned short nset;
 unsigned short nbset;

 nset = 0xFF & ~(1 << col);
 nbset = (nset << 8) + nset;
 locomo_writel(nbset, membase + LOCOMO_KSC);
}
