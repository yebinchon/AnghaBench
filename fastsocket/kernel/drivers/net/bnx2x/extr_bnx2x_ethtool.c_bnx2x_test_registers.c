
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bnx2x {int dummy; } ;



 int BNX2X_CHIP_MASK_E1 ;
 int BNX2X_CHIP_MASK_E1H ;




 int BNX2X_MSG_ETHTOOL ;
 int BNX2X_MSG_NVM ;
 int BP_PORT (struct bnx2x*) ;

 scalar_t__ CHIP_IS_E1 (struct bnx2x*) ;
 scalar_t__ CHIP_IS_E1H (struct bnx2x*) ;
 scalar_t__ CHIP_IS_E2 (struct bnx2x*) ;
 scalar_t__ CHIP_IS_E3B0 (struct bnx2x*) ;

 int DP (int,char*,...) ;
 int ENODEV ;
 int REG_RD (struct bnx2x*,int) ;
 int REG_WR (struct bnx2x*,int,int) ;






 int bnx2x_is_nvm_accessible (struct bnx2x*) ;

__attribute__((used)) static int bnx2x_test_registers(struct bnx2x *bp)
{
 int idx, i, rc = -ENODEV;
 u32 wr_val = 0, hw;
 int port = BP_PORT(bp);
 static const struct {
  u32 hw;
  u32 offset0;
  u32 offset1;
  u32 mask;
 } reg_tbl[] = {
         { 170,
   165, 4, 0x000003ff },
  { 170,
   164, 4, 0xffffffff },
  { 169,
   163, 4, 0x000003ff },
  { 170,
   142, 4, 0x00000001 },
  { 169 | 168 | 167,
   141, 4, 0x000007ff },
  { 166,
   143, 4, 0x000007ff },
  { 170,
   140, 4, 0x00ffffff },
  { 170,
   139, 4, 0x000fffff },
  { 170,
   136, 8, 0x0003ffff },
  { 170,
   138, 4, 0x000fffff },
         { 170,
   135, 8, 0x0003ffff },
  { 170,
   137, 4, 0x000fffff },
  { 170,
   134, 4, 0x000fffff },
  { 170,
   131, 4, 0x0003ffff },
  { 170,
   133, 40, 0xffffffff },
  { 170,
   132, 40, 0xffffffff },
  { 170,
   128, 4, 0x00000001 },
  { 170,
   129, 4, 0x00000003 },
  { 170,
   130, 4, 0x000000ff },
  { 170,
   151, 4, 0x00000001 },
         { 169 | 168,
   160, 4, 0x00000001 },
  { 169 | 168,
   162, 4, 0x00000001 },
  { 170,
   146, 4, 0x00000001 },
  { 170,
   161, 4, 0x00000001 },
  { 170,
   149, 4, 0x00000007 },
  { 170,
   157, 68, 0x000000ff },
  { 170,
   158, 68, 0xffffffff },
  { 170,
   155, 160, 0xffffffff },
  { 170,
   156, 160, 0xffffffff },
  { 170,
   152, 160, 0x00000001 },
         { 170,
   153, 160, 0x0000ffff },
  { 170,
   154, 160, 0x0000ffff },
  { 170,
   150, 160, 0x00000fff },
  { 169 | 168,
   144, 4, 0x00000001 },
  { 170,
   159, 4, 0x00000001},
  { 170,
   147, 4, 0x07ffffff },
  { 169 | 168,
   145, 24, 0x00000001 },
  { 169 | 168,
   148, 16, 0x0000001f },

  { 170, 0xffffffff, 0, 0x00000000 }
 };

 if (!bnx2x_is_nvm_accessible(bp)) {
  DP(BNX2X_MSG_ETHTOOL | BNX2X_MSG_NVM,
     "cannot access eeprom when the interface is down\n");
  return rc;
 }

 if (CHIP_IS_E1(bp))
  hw = BNX2X_CHIP_MASK_E1;
 else if (CHIP_IS_E1H(bp))
  hw = BNX2X_CHIP_MASK_E1H;
 else if (CHIP_IS_E2(bp))
  hw = 168;
 else if (CHIP_IS_E3B0(bp))
  hw = 166;
 else
  hw = 167;




 for (idx = 0; idx < 2; idx++) {

  switch (idx) {
  case 0:
   wr_val = 0;
   break;
  case 1:
   wr_val = 0xffffffff;
   break;
  }

  for (i = 0; reg_tbl[i].offset0 != 0xffffffff; i++) {
   u32 offset, mask, save_val, val;
   if (!(hw & reg_tbl[i].hw))
    continue;

   offset = reg_tbl[i].offset0 + port*reg_tbl[i].offset1;
   mask = reg_tbl[i].mask;

   save_val = REG_RD(bp, offset);

   REG_WR(bp, offset, wr_val & mask);

   val = REG_RD(bp, offset);


   REG_WR(bp, offset, save_val);


   if ((val & mask) != (wr_val & mask)) {
    DP(BNX2X_MSG_ETHTOOL,
       "offset 0x%x: val 0x%x != 0x%x mask 0x%x\n",
       offset, val, wr_val, mask);
    goto test_reg_exit;
   }
  }
 }

 rc = 0;

test_reg_exit:
 return rc;
}
