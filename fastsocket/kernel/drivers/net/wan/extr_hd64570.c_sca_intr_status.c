
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int card_t ;


 int DSR_EOM ;
 int DSR_TX (int) ;
 int ISR0 ;
 int ISR1 ;
 int SCA_INTR_DMAC_RX (int) ;
 int SCA_INTR_DMAC_TX (int) ;
 int SCA_INTR_MSCI (int) ;
 int sca_in (int ,int *) ;

__attribute__((used)) static inline int sca_intr_status(card_t *card)
{
 u8 result = 0;
 u8 isr0 = sca_in(ISR0, card);
 u8 isr1 = sca_in(ISR1, card);

 if (isr1 & 0x03) result |= SCA_INTR_DMAC_RX(0);
 if (isr1 & 0x0C) result |= SCA_INTR_DMAC_TX(0);
 if (isr1 & 0x30) result |= SCA_INTR_DMAC_RX(1);
 if (isr1 & 0xC0) result |= SCA_INTR_DMAC_TX(1);
 if (isr0 & 0x0F) result |= SCA_INTR_MSCI(0);
 if (isr0 & 0xF0) result |= SCA_INTR_MSCI(1);

 if (!(result & SCA_INTR_DMAC_TX(0)))
  if (sca_in(DSR_TX(0), card) & DSR_EOM)
   result |= SCA_INTR_DMAC_TX(0);
 if (!(result & SCA_INTR_DMAC_TX(1)))
  if (sca_in(DSR_TX(1), card) & DSR_EOM)
   result |= SCA_INTR_DMAC_TX(1);

 return result;
}
