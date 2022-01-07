
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct IsdnCardState {int dummy; } ;


 int HFCB_Z_HIGH ;
 int HFCB_Z_LOW ;
 int HFCD_DATA ;
 int ReadReg (struct IsdnCardState*,int ,int) ;
 int WaitNoBusy (struct IsdnCardState*) ;

__attribute__((used)) static int
ReadZReg(struct IsdnCardState *cs, u_char reg)
{
 int val;

 WaitNoBusy(cs);
 val = 256 * ReadReg(cs, HFCD_DATA, reg | HFCB_Z_HIGH);
 WaitNoBusy(cs);
 val += ReadReg(cs, HFCD_DATA, reg | HFCB_Z_LOW);
 return (val);
}
