
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct IsdnCardState {int debug; int (* BC_Write_Reg ) (struct IsdnCardState*,int,int ,int) ;} ;


 int ISAR_CTRL_H ;
 int ISAR_CTRL_L ;
 int ISAR_HIS ;
 int ISAR_MBOX ;
 int ISAR_WADR ;
 int L1_DEB_HSCX ;
 int L1_DEB_HSCX_FIFO ;
 int QuickHex (char*,int*,int) ;
 int debugl1 (struct IsdnCardState*,char*,...) ;
 int sprintf (char*,char*,int) ;
 int stub1 (struct IsdnCardState*,int,int ,int) ;
 int stub2 (struct IsdnCardState*,int,int ,int) ;
 int stub3 (struct IsdnCardState*,int,int ,int) ;
 int stub4 (struct IsdnCardState*,int,int ,int) ;
 int stub5 (struct IsdnCardState*,int,int ,int) ;
 int stub6 (struct IsdnCardState*,int,int ,int) ;
 int waitforHIA (struct IsdnCardState*,int) ;

__attribute__((used)) static int
sendmsg(struct IsdnCardState *cs, u_char his, u_char creg, u_char len,
 u_char *msg)
{
 int i;

 if (!waitforHIA(cs, 4000))
  return(0);




 cs->BC_Write_Reg(cs, 0, ISAR_CTRL_H, creg);
 cs->BC_Write_Reg(cs, 0, ISAR_CTRL_L, len);
 cs->BC_Write_Reg(cs, 0, ISAR_WADR, 0);
 if (msg && len) {
  cs->BC_Write_Reg(cs, 1, ISAR_MBOX, msg[0]);
  for (i=1; i<len; i++)
   cs->BC_Write_Reg(cs, 2, ISAR_MBOX, msg[i]);
 }
 cs->BC_Write_Reg(cs, 1, ISAR_HIS, his);
 waitforHIA(cs, 10000);
 return(1);
}
