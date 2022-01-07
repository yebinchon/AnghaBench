
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int CAMDMA_CSR (int) ;
 int CAMDMA_IRQSTATUS_L0 ;
 int NUM_CAMDMA_CHANNELS ;
 int omap24xxcam_reg_in (unsigned long,int ) ;
 int omap24xxcam_reg_out (unsigned long,int ,int) ;

__attribute__((used)) static void omap24xxcam_dmahw_ack_all(unsigned long base)
{
 u32 csr;
 int i;

 for (i = 0; i < NUM_CAMDMA_CHANNELS; ++i) {
  csr = omap24xxcam_reg_in(base, CAMDMA_CSR(i));

  omap24xxcam_reg_out(base, CAMDMA_CSR(i), csr);
 }
 omap24xxcam_reg_out(base, CAMDMA_IRQSTATUS_L0, 0xf);
}
