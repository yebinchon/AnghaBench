
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u32 ;
struct wreg_addr {size_t size; size_t addr; size_t read_regs_count; size_t* read_regs; int presets; } ;
struct bnx2x {int dummy; } ;
struct TYPE_4__ {size_t size; size_t addr; int presets; } ;


 scalar_t__ CHIP_IS_E1 (struct bnx2x*) ;
 scalar_t__ CHIP_IS_E1H (struct bnx2x*) ;
 scalar_t__ CHIP_IS_E2 (struct bnx2x*) ;
 scalar_t__ CHIP_IS_E3 (struct bnx2x*) ;
 scalar_t__ CHIP_IS_E3A0 (struct bnx2x*) ;
 scalar_t__ CHIP_IS_E3B0 (struct bnx2x*) ;
 size_t IDLE_REGS_COUNT ;
 scalar_t__ IS_REG_IN_PRESET (int ,size_t) ;
 size_t REGS_COUNT ;
 void* REG_RD (struct bnx2x*,size_t) ;
 scalar_t__ bnx2x_is_reg_in_chip (struct bnx2x*,TYPE_1__*) ;
 scalar_t__ bnx2x_is_wreg_in_chip (struct bnx2x*,struct wreg_addr const*) ;
 int bnx2x_read_pages_regs (struct bnx2x*,size_t*,size_t) ;
 TYPE_1__* idle_reg_addrs ;
 TYPE_1__* reg_addrs ;
 struct wreg_addr wreg_addr_e1 ;
 struct wreg_addr wreg_addr_e1h ;
 struct wreg_addr wreg_addr_e2 ;
 struct wreg_addr wreg_addr_e3 ;
 struct wreg_addr wreg_addr_e3b0 ;

__attribute__((used)) static int __bnx2x_get_preset_regs(struct bnx2x *bp, u32 *p, u32 preset)
{
 u32 i, j, addr;
 const struct wreg_addr *wreg_addr_p = ((void*)0);

 if (CHIP_IS_E1(bp))
  wreg_addr_p = &wreg_addr_e1;
 else if (CHIP_IS_E1H(bp))
  wreg_addr_p = &wreg_addr_e1h;
 else if (CHIP_IS_E2(bp))
  wreg_addr_p = &wreg_addr_e2;
 else if (CHIP_IS_E3A0(bp))
  wreg_addr_p = &wreg_addr_e3;
 else if (CHIP_IS_E3B0(bp))
  wreg_addr_p = &wreg_addr_e3b0;


 for (i = 0; i < IDLE_REGS_COUNT; i++) {
  if (bnx2x_is_reg_in_chip(bp, &idle_reg_addrs[i]) &&
      IS_REG_IN_PRESET(idle_reg_addrs[i].presets, preset)) {
   for (j = 0; j < idle_reg_addrs[i].size; j++)
    *p++ = REG_RD(bp, idle_reg_addrs[i].addr + j*4);
  }
 }


 for (i = 0; i < REGS_COUNT; i++) {
  if (bnx2x_is_reg_in_chip(bp, &reg_addrs[i]) &&
      IS_REG_IN_PRESET(reg_addrs[i].presets, preset)) {
   for (j = 0; j < reg_addrs[i].size; j++)
    *p++ = REG_RD(bp, reg_addrs[i].addr + j*4);
  }
 }


 if (bnx2x_is_wreg_in_chip(bp, wreg_addr_p) &&
     IS_REG_IN_PRESET(wreg_addr_p->presets, preset)) {
  for (i = 0; i < wreg_addr_p->size; i++) {
   *p++ = REG_RD(bp, wreg_addr_p->addr + i*4);




   for (j = 0; j < wreg_addr_p->read_regs_count; j++) {
    addr = *(wreg_addr_p->read_regs);
    *p++ = REG_RD(bp, addr + j*4);
   }
  }
 }


 if (CHIP_IS_E2(bp) || CHIP_IS_E3(bp)) {

  bnx2x_read_pages_regs(bp, p, preset);
 }

 return 0;
}
