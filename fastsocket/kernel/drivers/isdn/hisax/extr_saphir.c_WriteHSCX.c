
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_char ;
struct TYPE_3__ {int hscx; int ale; } ;
struct TYPE_4__ {TYPE_1__ saphir; } ;
struct IsdnCardState {TYPE_2__ hw; } ;


 int writereg (int ,int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static void
WriteHSCX(struct IsdnCardState *cs, int hscx, u_char offset, u_char value)
{
 writereg(cs->hw.saphir.ale, cs->hw.saphir.hscx,
  offset + (hscx ? 0x40 : 0), value);
}
