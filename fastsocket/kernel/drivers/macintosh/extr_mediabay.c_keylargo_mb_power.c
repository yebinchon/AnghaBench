
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct media_bay_info {int dummy; } ;


 int KEYLARGO_FCR1 ;
 int KEYLARGO_MBCR ;
 int KL1_EIDE0_ENABLE ;
 int KL1_EIDE0_RESET_N ;
 int KL_MBCR_MB0_DEV_MASK ;
 int KL_MBCR_MB0_DEV_POWER ;
 int KL_MBCR_MB0_DEV_RESET ;
 int MB_BIC (struct media_bay_info*,int ,int) ;
 int MB_BIS (struct media_bay_info*,int ,int) ;

__attribute__((used)) static void
keylargo_mb_power(struct media_bay_info* bay, int on_off)
{
 if (on_off) {

             MB_BIC(bay, KEYLARGO_MBCR, KL_MBCR_MB0_DEV_RESET);
             MB_BIC(bay, KEYLARGO_MBCR, KL_MBCR_MB0_DEV_POWER);
 } else {

  MB_BIC(bay, KEYLARGO_MBCR, KL_MBCR_MB0_DEV_MASK);
  MB_BIC(bay, KEYLARGO_FCR1, KL1_EIDE0_ENABLE);

  MB_BIS(bay, KEYLARGO_MBCR, KL_MBCR_MB0_DEV_POWER);
  MB_BIS(bay, KEYLARGO_MBCR, KL_MBCR_MB0_DEV_RESET);
  MB_BIS(bay, KEYLARGO_FCR1, KL1_EIDE0_RESET_N);
 }
 MB_BIC(bay, KEYLARGO_MBCR, 0x0000000F);
}
