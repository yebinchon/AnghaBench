
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct de_private {scalar_t__ tx_tail; scalar_t__ tx_head; scalar_t__ rx_tail; } ;


 int IntrMask ;
 int MacStatus ;
 int de_stop_rxtx (struct de_private*) ;
 int dr32 (int ) ;
 int dw32 (int ,int ) ;
 int udelay (int) ;

__attribute__((used)) static void de_stop_hw (struct de_private *de)
{

 udelay(5);
 dw32(IntrMask, 0);

 de_stop_rxtx(de);

 dw32(MacStatus, dr32(MacStatus));

 udelay(10);

 de->rx_tail = 0;
 de->tx_head = de->tx_tail = 0;
}
