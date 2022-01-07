
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ len; int * v_addr; } ;
struct il_priv {TYPE_1__ ucode_boot; } ;
typedef int __le32 ;


 scalar_t__ BSM_SRAM_LOWER_BOUND ;
 scalar_t__ BSM_WR_DWCOUNT_REG ;
 int D_INFO (char*) ;
 int EIO ;
 int IL_ERR (char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ il_rd_prph (struct il_priv*,scalar_t__) ;
 scalar_t__ le32_to_cpu (int ) ;

__attribute__((used)) static int
il4965_verify_bsm(struct il_priv *il)
{
 __le32 *image = il->ucode_boot.v_addr;
 u32 len = il->ucode_boot.len;
 u32 reg;
 u32 val;

 D_INFO("Begin verify bsm\n");


 val = il_rd_prph(il, BSM_WR_DWCOUNT_REG);
 for (reg = BSM_SRAM_LOWER_BOUND; reg < BSM_SRAM_LOWER_BOUND + len;
      reg += sizeof(u32), image++) {
  val = il_rd_prph(il, reg);
  if (val != le32_to_cpu(*image)) {
   IL_ERR("BSM uCode verification failed at "
          "addr 0x%08X+%u (of %u), is 0x%x, s/b 0x%x\n",
          BSM_SRAM_LOWER_BOUND, reg - BSM_SRAM_LOWER_BOUND,
          len, val, le32_to_cpu(*image));
   return -EIO;
  }
 }

 D_INFO("BSM bootstrap uCode image OK\n");

 return 0;
}
