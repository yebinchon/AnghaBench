
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tiger_hw {int auxd; scalar_t__ base; } ;


 scalar_t__ NJ_AUXDATA ;
 scalar_t__ NJ_ISAC_OFF ;
 int inb (scalar_t__) ;
 int outb (int,scalar_t__) ;

__attribute__((used)) static u8
ReadISAC_nj(void *p, u8 offset)
{
 struct tiger_hw *card = p;
 u8 ret;

 card->auxd &= 0xfc;
 card->auxd |= (offset >> 4) & 3;
 outb(card->auxd, card->base + NJ_AUXDATA);
 ret = inb(card->base + NJ_ISAC_OFF + ((offset & 0x0f) << 2));
 return ret;
}
