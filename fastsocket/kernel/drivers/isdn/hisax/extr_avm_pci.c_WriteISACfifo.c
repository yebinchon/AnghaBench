
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_3__ {int isac; scalar_t__ cfg_reg; } ;
struct TYPE_4__ {TYPE_1__ avm; } ;
struct IsdnCardState {TYPE_2__ hw; } ;


 int AVM_ISAC_FIFO ;
 int outb (int ,scalar_t__) ;
 int outsb (int ,int *,int) ;

__attribute__((used)) static void
WriteISACfifo(struct IsdnCardState *cs, u_char * data, int size)
{
 outb(AVM_ISAC_FIFO, cs->hw.avm.cfg_reg + 4);
 outsb(cs->hw.avm.isac, data, size);
}
