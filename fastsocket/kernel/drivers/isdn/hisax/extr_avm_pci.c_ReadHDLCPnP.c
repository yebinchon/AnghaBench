
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
 scalar_t__ inb (scalar_t__) ;
 int outb (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline u_char
ReadHDLCPnP(struct IsdnCardState *cs, int chan, u_char offset)
{
 register u_char idx = chan ? AVM_HDLC_2 : AVM_HDLC_1;
 register u_char val;

 outb(idx, cs->hw.avm.cfg_reg + 4);
 val = inb(cs->hw.avm.isac + offset);
 return (val);
}
