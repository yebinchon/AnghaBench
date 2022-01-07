
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_3__ {int addr; scalar_t__ cip; } ;
struct TYPE_4__ {TYPE_1__ hfc; } ;
struct IsdnCardState {TYPE_2__ hw; } ;


 int readfifo (int,int,int ,int *,int) ;

__attribute__((used)) static void
ReadISACfifo(struct IsdnCardState *cs, u_char * data, int size)
{
 cs->hw.hfc.cip = 0;
 readfifo(cs->hw.hfc.addr | 1, cs->hw.hfc.addr, 0, data, size);
}
