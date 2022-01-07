
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


 scalar_t__ inb (scalar_t__) ;

__attribute__((used)) static u_char
ReadW6692B(struct IsdnCardState *cs, int bchan, u_char offset)
{
 return (inb(cs->hw.w6692.iobase + (bchan ? 0x40 : 0) + offset));
}
