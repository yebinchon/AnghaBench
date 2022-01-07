
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_char ;
struct TYPE_3__ {int isac; int ale; } ;
struct TYPE_4__ {TYPE_1__ elsa; } ;
struct IsdnCardState {TYPE_2__ hw; } ;


 scalar_t__ readreg (int ,int ,scalar_t__) ;

__attribute__((used)) static u_char
ReadISAC_IPAC(struct IsdnCardState *cs, u_char offset)
{
 return (readreg(cs->hw.elsa.ale, cs->hw.elsa.isac, offset+0x80));
}
