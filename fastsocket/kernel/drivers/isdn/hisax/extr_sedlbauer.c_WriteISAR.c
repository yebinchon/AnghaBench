
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


 int byteout (int ,int ) ;
 int writereg (int ,int ,int ,int ) ;

__attribute__((used)) static void
WriteISAR(struct IsdnCardState *cs, int mode, u_char offset, u_char value)
{
 if (mode == 0)
  writereg(cs->hw.sedl.adr, cs->hw.sedl.hscx, offset, value);
 else {
  if (mode == 1)
   byteout(cs->hw.sedl.adr, offset);
  byteout(cs->hw.sedl.hscx, value);
 }
}
