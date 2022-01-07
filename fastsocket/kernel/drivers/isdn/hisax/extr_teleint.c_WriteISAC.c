
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_3__ {int addr; int cip; } ;
struct TYPE_4__ {TYPE_1__ hfc; } ;
struct IsdnCardState {TYPE_2__ hw; } ;


 int writereg (int,int,int ,int ) ;

__attribute__((used)) static void
WriteISAC(struct IsdnCardState *cs, u_char offset, u_char value)
{
 cs->hw.hfc.cip = offset;
 writereg(cs->hw.hfc.addr | 1, cs->hw.hfc.addr, offset, value);
}
