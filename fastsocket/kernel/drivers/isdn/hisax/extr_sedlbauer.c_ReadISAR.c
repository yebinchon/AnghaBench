
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_3__ {int hscx; int adr; } ;
struct TYPE_4__ {TYPE_1__ sedl; } ;
struct IsdnCardState {TYPE_2__ hw; } ;


 int bytein (int ) ;
 int byteout (int ,int ) ;
 int readreg (int ,int ,int ) ;

__attribute__((used)) static u_char
ReadISAR(struct IsdnCardState *cs, int mode, u_char offset)
{
 if (mode == 0)
  return (readreg(cs->hw.sedl.adr, cs->hw.sedl.hscx, offset));
 else if (mode == 1)
  byteout(cs->hw.sedl.adr, offset);
 return(bytein(cs->hw.sedl.hscx));
}
