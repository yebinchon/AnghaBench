
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bnx2x {int dummy; } ;


 scalar_t__ CHIP_IS_E2 (struct bnx2x*) ;
 scalar_t__ CHIP_IS_E3 (struct bnx2x*) ;
 int PAGE_READ_REGS_E2 ;
 int PAGE_READ_REGS_E3 ;

__attribute__((used)) static u32 __bnx2x_get_page_read_num(struct bnx2x *bp)
{
 if (CHIP_IS_E2(bp))
  return PAGE_READ_REGS_E2;
 else if (CHIP_IS_E3(bp))
  return PAGE_READ_REGS_E3;
 else
  return 0;
}
