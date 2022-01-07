
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_char ;
struct TYPE_3__ {scalar_t__ cfg_reg; } ;
struct TYPE_4__ {TYPE_1__ avm; } ;
struct IsdnCardState {TYPE_2__ hw; } ;


 scalar_t__ ADDRREG_OFFSET ;
 scalar_t__ DATAREG_OFFSET ;
 scalar_t__ ISAC_REG_OFFSET ;
 int byteout (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void
WriteISAC(struct IsdnCardState *cs, u_char offset, u_char value)
{
        offset -= 0x20;
        byteout(cs->hw.avm.cfg_reg+ADDRREG_OFFSET,ISAC_REG_OFFSET+offset);
 byteout(cs->hw.avm.cfg_reg+DATAREG_OFFSET, value);
}
