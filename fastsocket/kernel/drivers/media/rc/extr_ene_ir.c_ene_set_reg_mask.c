
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct ene_device {scalar_t__ hw_io; } ;


 scalar_t__ ENE_IO ;
 int dbg_regs (char*,int ,int) ;
 int ene_set_reg_addr (struct ene_device*,int ) ;
 int inb (scalar_t__) ;
 int outb (int,scalar_t__) ;

__attribute__((used)) static void ene_set_reg_mask(struct ene_device *dev, u16 reg, u8 mask)
{
 dbg_regs("reg %04x |= %02x", reg, mask);
 ene_set_reg_addr(dev, reg);
 outb(inb(dev->hw_io + ENE_IO) | mask, dev->hw_io + ENE_IO);
}
