
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tiger_hw {scalar_t__ base; } ;


 scalar_t__ NJ_IRQMASK0 ;
 scalar_t__ NJ_IRQMASK1 ;
 int outb (int ,scalar_t__) ;

__attribute__((used)) static void
nj_disable_hwirq(struct tiger_hw *card)
{
 outb(0, card->base + NJ_IRQMASK0);
 outb(0, card->base + NJ_IRQMASK1);
}
