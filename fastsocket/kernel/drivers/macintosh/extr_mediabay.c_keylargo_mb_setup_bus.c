
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct media_bay_info {int dummy; } ;


 int ENODEV ;
 int KEYLARGO_FCR1 ;
 int KEYLARGO_MBCR ;
 int KL1_EIDE0_ENABLE ;
 int KL1_EIDE0_RESET_N ;
 int KL_MBCR_MB0_IDE_ENABLE ;
 int KL_MBCR_MB0_PCI_ENABLE ;
 int KL_MBCR_MB0_SOUND_ENABLE ;
 int MB_BIC (struct media_bay_info*,int ,int ) ;
 int MB_BIS (struct media_bay_info*,int ,int ) ;




__attribute__((used)) static int
keylargo_mb_setup_bus(struct media_bay_info* bay, u8 device_id)
{
 switch(device_id) {
  case 130:
   MB_BIS(bay, KEYLARGO_MBCR, KL_MBCR_MB0_IDE_ENABLE);
   MB_BIC(bay, KEYLARGO_FCR1, KL1_EIDE0_RESET_N);
   MB_BIS(bay, KEYLARGO_FCR1, KL1_EIDE0_ENABLE);
   return 0;
  case 129:
   MB_BIS(bay, KEYLARGO_MBCR, KL_MBCR_MB0_PCI_ENABLE);
   return 0;
  case 128:
   MB_BIS(bay, KEYLARGO_MBCR, KL_MBCR_MB0_SOUND_ENABLE);
   return 0;
 }
 return -ENODEV;
}
