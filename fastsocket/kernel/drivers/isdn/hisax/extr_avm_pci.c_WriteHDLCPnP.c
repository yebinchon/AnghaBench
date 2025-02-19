
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_char ;
struct TYPE_3__ {scalar_t__ isac; scalar_t__ cfg_reg; } ;
struct TYPE_4__ {TYPE_1__ avm; } ;
struct IsdnCardState {TYPE_2__ hw; } ;


 scalar_t__ AVM_HDLC_1 ;
 scalar_t__ AVM_HDLC_2 ;
 int outb (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void
WriteHDLCPnP(struct IsdnCardState *cs, int chan, u_char offset, u_char value)
{
 register u_char idx = chan ? AVM_HDLC_2 : AVM_HDLC_1;

 outb(idx, cs->hw.avm.cfg_reg + 4);
 outb(value, cs->hw.avm.isac + offset);
}
