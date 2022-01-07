
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cp_private {scalar_t__ tx_tail; scalar_t__ tx_head; scalar_t__ rx_tail; } ;


 int Cmd ;
 int CpCmd ;
 int IntrMask ;
 int IntrStatus ;
 int cpr16 (int ) ;
 int cpw16 (int ,int ) ;
 int cpw16_f (int ,int ) ;
 int cpw8 (int ,int ) ;

__attribute__((used)) static void cp_stop_hw (struct cp_private *cp)
{
 cpw16(IntrStatus, ~(cpr16(IntrStatus)));
 cpw16_f(IntrMask, 0);
 cpw8(Cmd, 0);
 cpw16_f(CpCmd, 0);
 cpw16_f(IntrStatus, ~(cpr16(IntrStatus)));

 cp->rx_tail = 0;
 cp->tx_head = cp->tx_tail = 0;
}
