
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int dma_addr_t ;


 int CAMDMA_CCR (int) ;
 int CAMDMA_CCR_BS ;
 int CAMDMA_CCR_DST_AMODE_POST_INC ;
 int CAMDMA_CCR_FS ;
 int CAMDMA_CCR_RD_ACTIVE ;
 int CAMDMA_CCR_SEL_SRC_DST_SYNC ;
 int CAMDMA_CCR_SRC_AMODE_POST_INC ;
 int CAMDMA_CCR_SYNCHRO_CAMERA ;
 int CAMDMA_CCR_WR_ACTIVE ;
 int CAMDMA_CDEI (int) ;
 int CAMDMA_CDFI (int) ;
 int CAMDMA_CDSA (int) ;
 int CAMDMA_CEN (int) ;
 int CAMDMA_CFN (int) ;
 int CAMDMA_CICR (int) ;
 int CAMDMA_CICR_BLOCK_IE ;
 int CAMDMA_CICR_DROP_IE ;
 int CAMDMA_CICR_MISALIGNED_ERR_IE ;
 int CAMDMA_CICR_SECURE_ERR_IE ;
 int CAMDMA_CICR_TRANS_ERR_IE ;
 int CAMDMA_CLNK_CTRL (int) ;
 int CAMDMA_CSDP (int) ;
 int CAMDMA_CSDP_DATA_TYPE_8BITS ;
 int CAMDMA_CSDP_DST_BURST_EN_32 ;
 int CAMDMA_CSDP_DST_PACKED ;
 int CAMDMA_CSDP_SRC_BURST_EN_32 ;
 int CAMDMA_CSDP_SRC_PACKED ;
 int CAMDMA_CSDP_WRITE_MODE_POSTED ;
 int CAMDMA_CSEI (int) ;
 int CAMDMA_CSFI (int) ;
 int CAMDMA_CSR (int) ;
 int CAMDMA_CSR_BLOCK ;
 int CAMDMA_CSR_DROP ;
 int CAMDMA_CSR_MISALIGNED_ERR ;
 int CAMDMA_CSR_SECURE_ERR ;
 int CAMDMA_CSR_TRANS_ERR ;
 int CAMDMA_CSSA (int) ;
 int DMA_THRESHOLD ;
 int omap24xxcam_reg_out (unsigned long,int ,int) ;

__attribute__((used)) static void omap24xxcam_dmahw_transfer_setup(unsigned long base, int dmach,
          dma_addr_t start, u32 len)
{
 omap24xxcam_reg_out(base, CAMDMA_CCR(dmach),
       CAMDMA_CCR_SEL_SRC_DST_SYNC
       | CAMDMA_CCR_BS
       | CAMDMA_CCR_DST_AMODE_POST_INC
       | CAMDMA_CCR_SRC_AMODE_POST_INC
       | CAMDMA_CCR_FS
       | CAMDMA_CCR_WR_ACTIVE
       | CAMDMA_CCR_RD_ACTIVE
       | CAMDMA_CCR_SYNCHRO_CAMERA);
 omap24xxcam_reg_out(base, CAMDMA_CLNK_CTRL(dmach), 0);
 omap24xxcam_reg_out(base, CAMDMA_CEN(dmach), len);
 omap24xxcam_reg_out(base, CAMDMA_CFN(dmach), 1);
 omap24xxcam_reg_out(base, CAMDMA_CSDP(dmach),
       CAMDMA_CSDP_WRITE_MODE_POSTED
       | CAMDMA_CSDP_DST_BURST_EN_32
       | CAMDMA_CSDP_DST_PACKED
       | CAMDMA_CSDP_SRC_BURST_EN_32
       | CAMDMA_CSDP_SRC_PACKED
       | CAMDMA_CSDP_DATA_TYPE_8BITS);
 omap24xxcam_reg_out(base, CAMDMA_CSSA(dmach), 0);
 omap24xxcam_reg_out(base, CAMDMA_CDSA(dmach), start);
 omap24xxcam_reg_out(base, CAMDMA_CSEI(dmach), 0);
 omap24xxcam_reg_out(base, CAMDMA_CSFI(dmach), DMA_THRESHOLD);
 omap24xxcam_reg_out(base, CAMDMA_CDEI(dmach), 0);
 omap24xxcam_reg_out(base, CAMDMA_CDFI(dmach), 0);
 omap24xxcam_reg_out(base, CAMDMA_CSR(dmach),
       CAMDMA_CSR_MISALIGNED_ERR
       | CAMDMA_CSR_SECURE_ERR
       | CAMDMA_CSR_TRANS_ERR
       | CAMDMA_CSR_BLOCK
       | CAMDMA_CSR_DROP);
 omap24xxcam_reg_out(base, CAMDMA_CICR(dmach),
       CAMDMA_CICR_MISALIGNED_ERR_IE
       | CAMDMA_CICR_SECURE_ERR_IE
       | CAMDMA_CICR_TRANS_ERR_IE
       | CAMDMA_CICR_BLOCK_IE
       | CAMDMA_CICR_DROP_IE);
}
