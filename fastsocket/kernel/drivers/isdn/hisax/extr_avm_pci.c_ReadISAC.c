
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_3__ {scalar_t__ isac; scalar_t__ cfg_reg; } ;
struct TYPE_4__ {TYPE_1__ avm; } ;
struct IsdnCardState {TYPE_2__ hw; } ;


 int AVM_ISAC_REG_HIGH ;
 int AVM_ISAC_REG_LOW ;
 int inb (scalar_t__) ;
 int outb (int,scalar_t__) ;

__attribute__((used)) static u_char
ReadISAC(struct IsdnCardState *cs, u_char offset)
{
 register u_char idx = (offset > 0x2f) ? AVM_ISAC_REG_HIGH : AVM_ISAC_REG_LOW;
 register u_char val;

 outb(idx, cs->hw.avm.cfg_reg + 4);
 val = inb(cs->hw.avm.isac + (offset & 0xf));
 return (val);
}
