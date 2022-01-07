
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnad {int dummy; } ;


 int bnad_enable_mbox_irq (struct bnad*) ;

void
bnad_cb_mbox_intr_enable(struct bnad *bnad)
{
 bnad_enable_mbox_irq(bnad);
}
