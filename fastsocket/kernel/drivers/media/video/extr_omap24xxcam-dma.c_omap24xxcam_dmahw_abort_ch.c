
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CAMDMA_CCR (int) ;
 int CAMDMA_CCR_ENABLE ;
 int CAMDMA_CICR (int) ;
 int CAMDMA_CLNK_CTRL (int) ;
 int CAMDMA_CLNK_CTRL_ENABLE_LNK ;
 int omap24xxcam_reg_merge (unsigned long,int ,int ,int ) ;
 int omap24xxcam_reg_out (unsigned long,int ,int ) ;

__attribute__((used)) static void omap24xxcam_dmahw_abort_ch(unsigned long base, int dmach)
{

 omap24xxcam_reg_out(base, CAMDMA_CICR(dmach), 0);

 omap24xxcam_reg_merge(base, CAMDMA_CLNK_CTRL(dmach), 0,
         CAMDMA_CLNK_CTRL_ENABLE_LNK);

 omap24xxcam_reg_merge(base, CAMDMA_CCR(dmach), 0, CAMDMA_CCR_ENABLE);
}
