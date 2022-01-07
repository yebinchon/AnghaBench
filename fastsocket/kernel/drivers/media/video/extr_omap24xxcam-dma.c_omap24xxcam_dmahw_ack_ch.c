
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int CAMDMA_CSR (int) ;
 int CAMDMA_IRQSTATUS_L0 ;
 int omap24xxcam_reg_in (unsigned long,int ) ;
 int omap24xxcam_reg_out (unsigned long,int ,int) ;

__attribute__((used)) static u32 omap24xxcam_dmahw_ack_ch(unsigned long base, int dmach)
{
 u32 csr;

 csr = omap24xxcam_reg_in(base, CAMDMA_CSR(dmach));

 omap24xxcam_reg_out(base, CAMDMA_CSR(dmach), csr);

 omap24xxcam_reg_out(base, CAMDMA_IRQSTATUS_L0, (1 << dmach));

 return csr;
}
