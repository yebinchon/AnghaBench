
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {scalar_t__ RxDescArray; scalar_t__* Rx_databuff; } ;


 unsigned int NUM_RX_DESC ;
 int rtl8169_free_rx_databuff (struct rtl8169_private*,scalar_t__*,scalar_t__) ;

__attribute__((used)) static void rtl8169_rx_clear(struct rtl8169_private *tp)
{
 unsigned int i;

 for (i = 0; i < NUM_RX_DESC; i++) {
  if (tp->Rx_databuff[i]) {
   rtl8169_free_rx_databuff(tp, tp->Rx_databuff + i,
         tp->RxDescArray + i);
  }
 }
}
