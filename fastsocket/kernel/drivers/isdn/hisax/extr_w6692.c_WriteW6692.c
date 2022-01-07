
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_char ;
struct TYPE_3__ {scalar_t__ iobase; } ;
struct TYPE_4__ {TYPE_1__ w6692; } ;
struct IsdnCardState {TYPE_2__ hw; } ;


 int outb (scalar_t__,scalar_t__) ;

__attribute__((used)) static void
WriteW6692(struct IsdnCardState *cs, u_char offset, u_char value)
{
 outb(value, cs->hw.w6692.iobase + offset);
}
