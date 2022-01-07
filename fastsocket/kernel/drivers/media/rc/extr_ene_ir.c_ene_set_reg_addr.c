
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ene_device {scalar_t__ hw_io; } ;


 scalar_t__ ENE_ADDR_HI ;
 scalar_t__ ENE_ADDR_LO ;
 int outb (int,scalar_t__) ;

__attribute__((used)) static void ene_set_reg_addr(struct ene_device *dev, u16 reg)
{
 outb(reg >> 8, dev->hw_io + ENE_ADDR_HI);
 outb(reg & 0xFF, dev->hw_io + ENE_ADDR_LO);
}
