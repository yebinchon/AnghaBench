
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_4__ {int addr; int cip; } ;
struct TYPE_3__ {TYPE_2__ hfc; } ;
struct IsdnCardState {int debug; TYPE_1__ hw; } ;


 int L1_DEB_HSCX_FIFO ;
 int bytein (int) ;
 int byteout (int,int ) ;
 int debugl1 (struct IsdnCardState*,char*,int ,int ) ;

__attribute__((used)) static u_char
ReadHFC(struct IsdnCardState *cs, int data, u_char reg)
{
 register u_char ret;

 if (data) {
  cs->hw.hfc.cip = reg;
  byteout(cs->hw.hfc.addr | 1, reg);
  ret = bytein(cs->hw.hfc.addr);
  if (cs->debug & L1_DEB_HSCX_FIFO && (data != 2))
   debugl1(cs, "hfc RD %02x %02x", reg, ret);
 } else
  ret = bytein(cs->hw.hfc.addr | 1);
 return (ret);
}
