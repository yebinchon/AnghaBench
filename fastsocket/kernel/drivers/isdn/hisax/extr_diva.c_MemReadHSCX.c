
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_char ;
struct TYPE_3__ {int cfg_reg; } ;
struct TYPE_4__ {TYPE_1__ diva; } ;
struct IsdnCardState {TYPE_2__ hw; } ;


 scalar_t__ memreadreg (int ,scalar_t__) ;

__attribute__((used)) static u_char
MemReadHSCX(struct IsdnCardState *cs, int hscx, u_char offset)
{
 return(memreadreg(cs->hw.diva.cfg_reg, offset + (hscx ? 0x40 : 0)));
}
