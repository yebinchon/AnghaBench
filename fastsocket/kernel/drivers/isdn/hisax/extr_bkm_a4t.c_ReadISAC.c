
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_3__ {int isac_adr; int isac_ale; } ;
struct TYPE_4__ {TYPE_1__ ax; } ;
struct IsdnCardState {TYPE_2__ hw; } ;


 int readreg (int ,int ,int ) ;

__attribute__((used)) static u_char
ReadISAC(struct IsdnCardState *cs, u_char offset)
{
 return (readreg(cs->hw.ax.isac_ale, cs->hw.ax.isac_adr, offset));
}
