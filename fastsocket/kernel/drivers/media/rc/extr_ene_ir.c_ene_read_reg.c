
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
 int inb (scalar_t__) ;

__attribute__((used)) static u8 ene_read_reg(struct ene_device *dev, u16 reg)
{
 u8 retval;
 ene_set_reg_addr(dev, reg);
 retval = inb(dev->hw_io + ENE_IO);
 dbg_regs("reg %04x == %02x", reg, retval);
 return retval;
}
