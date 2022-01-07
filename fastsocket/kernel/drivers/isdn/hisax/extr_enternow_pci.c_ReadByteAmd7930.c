
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ isac; } ;
struct TYPE_4__ {TYPE_1__ njet; } ;
struct IsdnCardState {TYPE_2__ hw; } ;


 int AMD_CR ;
 int AMD_DR ;
 unsigned char inb (scalar_t__) ;
 int outb (unsigned char,scalar_t__) ;

__attribute__((used)) static unsigned char
ReadByteAmd7930(struct IsdnCardState *cs, unsigned char offset)
{

 if(offset < 8)
  return (inb(cs->hw.njet.isac + 4*offset));


 else {
  outb(offset, cs->hw.njet.isac + 4*AMD_CR);
  return(inb(cs->hw.njet.isac + 4*AMD_DR));
 }
}
