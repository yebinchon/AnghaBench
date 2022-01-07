
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_char ;
struct TYPE_3__ {scalar_t__ cip; int addr; } ;
struct TYPE_4__ {TYPE_1__ hfcD; } ;
struct IsdnCardState {int debug; TYPE_2__ hw; } ;


 int L1_DEB_HSCX_FIFO ;
 scalar_t__ bytein (int) ;
 int byteout (int,scalar_t__) ;
 int debugl1 (struct IsdnCardState*,char*,scalar_t__,scalar_t__) ;

__attribute__((used)) static inline u_char
ReadReg(struct IsdnCardState *cs, int data, u_char reg)
{
 register u_char ret;

 if (data) {
  if (cs->hw.hfcD.cip != reg) {
   cs->hw.hfcD.cip = reg;
   byteout(cs->hw.hfcD.addr | 1, reg);
  }
  ret = bytein(cs->hw.hfcD.addr);




 } else
  ret = bytein(cs->hw.hfcD.addr | 1);
 return (ret);
}
