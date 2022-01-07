
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reg_addr {int dummy; } ;
struct bnx2x {int dummy; } ;


 scalar_t__ CHIP_IS_E2 (struct bnx2x*) ;
 scalar_t__ CHIP_IS_E3 (struct bnx2x*) ;
 struct reg_addr const* page_read_regs_e2 ;
 struct reg_addr const* page_read_regs_e3 ;

__attribute__((used)) static const struct reg_addr *__bnx2x_get_page_read_ar(struct bnx2x *bp)
{
 if (CHIP_IS_E2(bp))
  return page_read_regs_e2;
 else if (CHIP_IS_E3(bp))
  return page_read_regs_e3;
 else
  return ((void*)0);
}
