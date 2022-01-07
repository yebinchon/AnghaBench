
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_6__ {int p_addr; scalar_t__ len; } ;
struct TYPE_5__ {int p_addr; scalar_t__ len; } ;
struct TYPE_4__ {scalar_t__ len; int * v_addr; } ;
struct il_priv {TYPE_3__ ucode_init_data; TYPE_2__ ucode_init; int ucode_type; TYPE_1__ ucode_boot; } ;
typedef scalar_t__ dma_addr_t ;
typedef int __le32 ;


 int BSM_DRAM_DATA_BYTECOUNT_REG ;
 int BSM_DRAM_DATA_PTR_REG ;
 int BSM_DRAM_INST_BYTECOUNT_REG ;
 int BSM_DRAM_INST_PTR_REG ;
 scalar_t__ BSM_SRAM_LOWER_BOUND ;
 int BSM_WR_CTRL_REG ;
 scalar_t__ BSM_WR_CTRL_REG_BIT_START ;
 scalar_t__ BSM_WR_CTRL_REG_BIT_START_EN ;
 int BSM_WR_DWCOUNT_REG ;
 int BSM_WR_MEM_DST_REG ;
 int BSM_WR_MEM_SRC_REG ;
 int D_INFO (char*,...) ;
 int EINVAL ;
 int EIO ;
 scalar_t__ IL49_MAX_BSM_SIZE ;
 scalar_t__ IL49_RTC_INST_LOWER_BOUND ;
 int IL_ERR (char*) ;
 int UCODE_RT ;
 int _il_wr_prph (struct il_priv*,scalar_t__,int ) ;
 int il4965_verify_bsm (struct il_priv*) ;
 scalar_t__ il_rd_prph (struct il_priv*,int ) ;
 int il_wr_prph (struct il_priv*,int ,scalar_t__) ;
 int le32_to_cpu (int ) ;
 int udelay (int) ;

__attribute__((used)) static int
il4965_load_bsm(struct il_priv *il)
{
 __le32 *image = il->ucode_boot.v_addr;
 u32 len = il->ucode_boot.len;
 dma_addr_t pinst;
 dma_addr_t pdata;
 u32 inst_len;
 u32 data_len;
 int i;
 u32 done;
 u32 reg_offset;
 int ret;

 D_INFO("Begin load bsm\n");

 il->ucode_type = UCODE_RT;


 if (len > IL49_MAX_BSM_SIZE)
  return -EINVAL;







 pinst = il->ucode_init.p_addr >> 4;
 pdata = il->ucode_init_data.p_addr >> 4;
 inst_len = il->ucode_init.len;
 data_len = il->ucode_init_data.len;

 il_wr_prph(il, BSM_DRAM_INST_PTR_REG, pinst);
 il_wr_prph(il, BSM_DRAM_DATA_PTR_REG, pdata);
 il_wr_prph(il, BSM_DRAM_INST_BYTECOUNT_REG, inst_len);
 il_wr_prph(il, BSM_DRAM_DATA_BYTECOUNT_REG, data_len);


 for (reg_offset = BSM_SRAM_LOWER_BOUND;
      reg_offset < BSM_SRAM_LOWER_BOUND + len;
      reg_offset += sizeof(u32), image++)
  _il_wr_prph(il, reg_offset, le32_to_cpu(*image));

 ret = il4965_verify_bsm(il);
 if (ret)
  return ret;


 il_wr_prph(il, BSM_WR_MEM_SRC_REG, 0x0);
 il_wr_prph(il, BSM_WR_MEM_DST_REG, IL49_RTC_INST_LOWER_BOUND);
 il_wr_prph(il, BSM_WR_DWCOUNT_REG, len / sizeof(u32));



 il_wr_prph(il, BSM_WR_CTRL_REG, BSM_WR_CTRL_REG_BIT_START);


 for (i = 0; i < 100; i++) {
  done = il_rd_prph(il, BSM_WR_CTRL_REG);
  if (!(done & BSM_WR_CTRL_REG_BIT_START))
   break;
  udelay(10);
 }
 if (i < 100)
  D_INFO("BSM write complete, poll %d iterations\n", i);
 else {
  IL_ERR("BSM write did not complete!\n");
  return -EIO;
 }



 il_wr_prph(il, BSM_WR_CTRL_REG, BSM_WR_CTRL_REG_BIT_START_EN);

 return 0;
}
