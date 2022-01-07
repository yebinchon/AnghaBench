
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath_hw {int dummy; } ;
typedef enum ath9k_rx_qtype { ____Placeholder_ath9k_rx_qtype } ath9k_rx_qtype ;


 int AR_HP_RXDP ;
 int AR_LP_RXDP ;
 int ATH9K_RX_QUEUE_HP ;
 int REG_WRITE (struct ath_hw*,int ,int ) ;

void ath9k_hw_addrxbuf_edma(struct ath_hw *ah, u32 rxdp,
       enum ath9k_rx_qtype qtype)
{
 if (qtype == ATH9K_RX_QUEUE_HP)
  REG_WRITE(ah, AR_HP_RXDP, rxdp);
 else
  REG_WRITE(ah, AR_LP_RXDP, rxdp);
}
