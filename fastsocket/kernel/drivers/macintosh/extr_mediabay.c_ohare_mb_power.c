
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct media_bay_info {int dummy; } ;


 int MB_BIC (struct media_bay_info*,int ,int) ;
 int MB_BIS (struct media_bay_info*,int ,int) ;
 int OHARE_FCR ;
 int OHARE_MBCR ;
 int OH_BAY_DEV_MASK ;
 int OH_BAY_POWER_N ;
 int OH_BAY_RESET_N ;
 int OH_FLOPPY_ENABLE ;
 int OH_IDE1_RESET_N ;

__attribute__((used)) static void
ohare_mb_power(struct media_bay_info* bay, int on_off)
{
 if (on_off) {

  MB_BIC(bay, OHARE_FCR, OH_BAY_RESET_N);
  MB_BIC(bay, OHARE_FCR, OH_BAY_POWER_N);
 } else {

  MB_BIC(bay, OHARE_FCR, OH_BAY_DEV_MASK);
  MB_BIC(bay, OHARE_FCR, OH_FLOPPY_ENABLE);

  MB_BIS(bay, OHARE_FCR, OH_BAY_POWER_N);
  MB_BIS(bay, OHARE_FCR, OH_BAY_RESET_N);
  MB_BIS(bay, OHARE_FCR, OH_IDE1_RESET_N);
 }
 MB_BIC(bay, OHARE_MBCR, 0x00000F00);
}
