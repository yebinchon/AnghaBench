
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IRQ_MFP_FSCSI ;
 int IRQ_TT_MFP_SCSI ;
 scalar_t__ IS_A_TT () ;
 int atari_disable_irq (int ) ;

__attribute__((used)) static inline void DISABLE_IRQ(void)
{
 if (IS_A_TT())
  atari_disable_irq(IRQ_TT_MFP_SCSI);
 else
  atari_disable_irq(IRQ_MFP_FSCSI);
}
