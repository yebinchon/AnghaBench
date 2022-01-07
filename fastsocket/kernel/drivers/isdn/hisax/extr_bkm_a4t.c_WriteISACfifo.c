
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


 int writefifo (int ,int ,int ,int *,int) ;

__attribute__((used)) static void
WriteISACfifo(struct IsdnCardState *cs, u_char * data, int size)
{
 writefifo(cs->hw.ax.isac_ale, cs->hw.ax.isac_adr, 0, data, size);
}
