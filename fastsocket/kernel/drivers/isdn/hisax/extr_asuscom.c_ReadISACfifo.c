
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_3__ {int isac; int adr; } ;
struct TYPE_4__ {TYPE_1__ asus; } ;
struct IsdnCardState {TYPE_2__ hw; } ;


 int readfifo (int ,int ,int ,int *,int) ;

__attribute__((used)) static void
ReadISACfifo(struct IsdnCardState *cs, u_char * data, int size)
{
 readfifo(cs->hw.asus.adr, cs->hw.asus.isac, 0, data, size);
}
