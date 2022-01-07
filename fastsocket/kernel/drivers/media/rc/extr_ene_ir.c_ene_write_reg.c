
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct ene_device {scalar_t__ hw_io; } ;


 scalar_t__ ENE_IO ;
 int dbg_regs (char*,int ,int ) ;
 int ene_set_reg_addr (struct ene_device*,int ) ;
 int outb (int ,scalar_t__) ;

__attribute__((used)) static void ene_write_reg(struct ene_device *dev, u16 reg, u8 value)
{
 dbg_regs("reg %04x <- %02x", reg, value);
 ene_set_reg_addr(dev, reg);
 outb(value, dev->hw_io + ENE_IO);
}
