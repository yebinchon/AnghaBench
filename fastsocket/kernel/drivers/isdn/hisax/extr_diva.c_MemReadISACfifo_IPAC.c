
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_3__ {int cfg_reg; } ;
struct TYPE_4__ {TYPE_1__ diva; } ;
struct IsdnCardState {TYPE_2__ hw; } ;


 int memreadreg (int ,int) ;

__attribute__((used)) static void
MemReadISACfifo_IPAC(struct IsdnCardState *cs, u_char * data, int size)
{
 while(size--)
  *data++ = memreadreg(cs->hw.diva.cfg_reg, 0x80);
}
