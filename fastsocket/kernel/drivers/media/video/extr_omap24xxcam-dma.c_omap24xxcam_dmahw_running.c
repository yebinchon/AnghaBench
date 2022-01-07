
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CAMDMA_CCR (int) ;
 int CAMDMA_CCR_ENABLE ;
 int omap24xxcam_reg_in (unsigned long,int ) ;

__attribute__((used)) static int omap24xxcam_dmahw_running(unsigned long base, int dmach)
{
 return omap24xxcam_reg_in(base, CAMDMA_CCR(dmach)) & CAMDMA_CCR_ENABLE;
}
