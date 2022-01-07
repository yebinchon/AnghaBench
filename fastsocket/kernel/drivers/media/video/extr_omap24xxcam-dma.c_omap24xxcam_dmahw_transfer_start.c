
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CAMDMA_CCR (int) ;
 int CAMDMA_CCR_BS ;
 int CAMDMA_CCR_DST_AMODE_POST_INC ;
 int CAMDMA_CCR_ENABLE ;
 int CAMDMA_CCR_FS ;
 int CAMDMA_CCR_SEL_SRC_DST_SYNC ;
 int CAMDMA_CCR_SRC_AMODE_POST_INC ;
 int CAMDMA_CCR_SYNCHRO_CAMERA ;
 int omap24xxcam_reg_out (unsigned long,int ,int) ;

__attribute__((used)) static void omap24xxcam_dmahw_transfer_start(unsigned long base, int dmach)
{
 omap24xxcam_reg_out(base, CAMDMA_CCR(dmach),
       CAMDMA_CCR_SEL_SRC_DST_SYNC
       | CAMDMA_CCR_BS
       | CAMDMA_CCR_DST_AMODE_POST_INC
       | CAMDMA_CCR_SRC_AMODE_POST_INC
       | CAMDMA_CCR_ENABLE
       | CAMDMA_CCR_FS
       | CAMDMA_CCR_SYNCHRO_CAMERA);
}
