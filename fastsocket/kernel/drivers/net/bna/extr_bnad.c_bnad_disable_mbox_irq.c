
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnad {int run_flags; } ;


 int BNAD_RF_MBOX_IRQ_DISABLED ;
 int BNAD_UPDATE_CTR (struct bnad*,int ) ;
 int mbox_intr_disabled ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void
bnad_disable_mbox_irq(struct bnad *bnad)
{
 set_bit(BNAD_RF_MBOX_IRQ_DISABLED, &bnad->run_flags);

 BNAD_UPDATE_CTR(bnad, mbox_intr_disabled);
}
