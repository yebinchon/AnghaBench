
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath_hw {int dummy; } ;


 int AR_RXDP ;
 int REG_WRITE (struct ath_hw*,int ,int ) ;

void ath9k_hw_putrxbuf(struct ath_hw *ah, u32 rxdp)
{
 REG_WRITE(ah, AR_RXDP, rxdp);
}
