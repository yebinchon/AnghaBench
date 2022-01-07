
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int ;
typedef scalar_t__ u_char ;
struct TYPE_3__ {scalar_t__ isac; scalar_t__ cfg_reg; } ;
struct TYPE_4__ {TYPE_1__ avm; } ;
struct IsdnCardState {TYPE_2__ hw; } ;


 int AVM_HDLC_1 ;
 int AVM_HDLC_2 ;
 int outl (int ,scalar_t__) ;

__attribute__((used)) static inline void
WriteHDLCPCI(struct IsdnCardState *cs, int chan, u_char offset, u_int value)
{
 register u_int idx = chan ? AVM_HDLC_2 : AVM_HDLC_1;

 outl(idx, cs->hw.avm.cfg_reg + 4);
 outl(value, cs->hw.avm.isac + offset);
}
