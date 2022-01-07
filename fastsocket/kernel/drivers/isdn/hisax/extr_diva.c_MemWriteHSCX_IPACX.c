
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


 scalar_t__ IPACX_OFF_B1 ;
 scalar_t__ IPACX_OFF_B2 ;
 int memwritereg (int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static void
MemWriteHSCX_IPACX(struct IsdnCardState *cs, int hscx, u_char offset, u_char value)
{
 memwritereg(cs->hw.diva.cfg_reg, offset +
              (hscx ? IPACX_OFF_B2 : IPACX_OFF_B1), value);
}
