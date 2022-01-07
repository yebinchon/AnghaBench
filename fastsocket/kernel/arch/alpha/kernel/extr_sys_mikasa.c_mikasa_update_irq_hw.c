
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int outw (int,int) ;

__attribute__((used)) static inline void
mikasa_update_irq_hw(int mask)
{
 outw(mask, 0x536);
}
