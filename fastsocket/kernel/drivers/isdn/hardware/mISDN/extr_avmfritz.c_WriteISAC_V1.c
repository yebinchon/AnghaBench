
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct fritzcard {scalar_t__ addr; } ;


 int AVM_ISAC_REG_HIGH ;
 int AVM_ISAC_REG_LOW ;
 scalar_t__ CHIP_INDEX ;
 scalar_t__ CHIP_WINDOW ;
 int outb (int,scalar_t__) ;

__attribute__((used)) static void
WriteISAC_V1(void *p, u8 offset, u8 value)
{
 struct fritzcard *fc = p;
 u8 idx = (offset > 0x2f) ? AVM_ISAC_REG_HIGH : AVM_ISAC_REG_LOW;

 outb(idx, fc->addr + CHIP_INDEX);
 outb(value, fc->addr + CHIP_WINDOW + (offset & 0xf));
}
