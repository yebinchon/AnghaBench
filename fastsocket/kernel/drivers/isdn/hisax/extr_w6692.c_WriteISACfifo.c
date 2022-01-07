
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_3__ {scalar_t__ iobase; } ;
struct TYPE_4__ {TYPE_1__ w6692; } ;
struct IsdnCardState {TYPE_2__ hw; } ;


 scalar_t__ W_D_XFIFO ;
 int outsb (scalar_t__,int *,int) ;

__attribute__((used)) static void
WriteISACfifo(struct IsdnCardState *cs, u_char * data, int size)
{
 outsb(cs->hw.w6692.iobase + W_D_XFIFO, data, size);
}
