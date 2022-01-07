
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CAMDMA_GCR ;
 int CAMDMA_GCR_MAX_CHANNEL_FIFO_DEPTH ;
 int CAMDMA_IRQENABLE_L0 ;
 int CAMDMA_OCP_SYSCONFIG ;
 int CAMDMA_OCP_SYSCONFIG_AUTOIDLE ;
 int CAMDMA_OCP_SYSCONFIG_MIDLEMODE_FSTANDBY ;
 int CAMDMA_OCP_SYSCONFIG_SIDLEMODE_FIDLE ;
 int omap24xxcam_reg_merge (unsigned long,int ,int,int ) ;
 int omap24xxcam_reg_out (unsigned long,int ,int) ;

__attribute__((used)) static void omap24xxcam_dmahw_init(unsigned long base)
{
 omap24xxcam_reg_out(base, CAMDMA_OCP_SYSCONFIG,
       CAMDMA_OCP_SYSCONFIG_MIDLEMODE_FSTANDBY
       | CAMDMA_OCP_SYSCONFIG_SIDLEMODE_FIDLE
       | CAMDMA_OCP_SYSCONFIG_AUTOIDLE);

 omap24xxcam_reg_merge(base, CAMDMA_GCR, 0x10,
         CAMDMA_GCR_MAX_CHANNEL_FIFO_DEPTH);

 omap24xxcam_reg_out(base, CAMDMA_IRQENABLE_L0, 0xf);
}
