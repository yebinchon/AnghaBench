
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cp_private {int cpcmd; } ;


 int Cmd ;
 int CpCmd ;
 int RxOn ;
 int TxOn ;
 int cpw16 (int ,int ) ;
 int cpw8 (int ,int) ;

__attribute__((used)) static inline void cp_start_hw (struct cp_private *cp)
{
 cpw16(CpCmd, cp->cpcmd);
 cpw8(Cmd, RxOn | TxOn);
}
