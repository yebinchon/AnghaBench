
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct isar_reg {int clsb; } ;
struct IsdnCardState {int debug; int (* BC_Write_Reg ) (struct IsdnCardState*,int,int ,int ) ;int (* BC_Read_Reg ) (struct IsdnCardState*,int,int ) ;} ;


 int ISAR_IIA ;
 int ISAR_MBOX ;
 int ISAR_RADR ;
 int L1_DEB_HSCX_FIFO ;
 int QuickHex (char*,int *,int) ;
 int debugl1 (struct IsdnCardState*,char*) ;
 int sprintf (char*,char*,int) ;
 int stub1 (struct IsdnCardState*,int,int ,int ) ;
 int stub2 (struct IsdnCardState*,int,int ) ;
 int stub3 (struct IsdnCardState*,int,int ) ;
 int stub4 (struct IsdnCardState*,int,int ,int ) ;

__attribute__((used)) static inline void
rcv_mbox(struct IsdnCardState *cs, struct isar_reg *ireg, u_char *msg)
{
 int i;

 cs->BC_Write_Reg(cs, 1, ISAR_RADR, 0);
 if (msg && ireg->clsb) {
  msg[0] = cs->BC_Read_Reg(cs, 1, ISAR_MBOX);
  for (i=1; i < ireg->clsb; i++)
    msg[i] = cs->BC_Read_Reg(cs, 2, ISAR_MBOX);
 }
 cs->BC_Write_Reg(cs, 1, ISAR_IIA, 0);
}
