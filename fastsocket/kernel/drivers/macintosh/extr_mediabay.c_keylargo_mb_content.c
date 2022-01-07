
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct media_bay_info {int cached_gpio; } ;


 int KEYLARGO_GPIO_INPUT_DATA ;
 int KEYLARGO_MBCR ;
 int KL_GPIO_MEDIABAY_IRQ ;
 int KL_MBCR_MB0_ENABLE ;
 int MB_BIC (struct media_bay_info*,int ,int) ;
 int MB_BIS (struct media_bay_info*,int ,int ) ;
 int MB_IN32 (struct media_bay_info*,int ) ;
 int MB_IN8 (struct media_bay_info*,int ) ;
 int MB_NO ;
 int udelay (int) ;

__attribute__((used)) static u8
keylargo_mb_content(struct media_bay_info *bay)
{
 int new_gpio;

 new_gpio = MB_IN8(bay, KL_GPIO_MEDIABAY_IRQ) & KEYLARGO_GPIO_INPUT_DATA;
 if (new_gpio) {
  bay->cached_gpio = new_gpio;
  return MB_NO;
 } else if (bay->cached_gpio != new_gpio) {
  MB_BIS(bay, KEYLARGO_MBCR, KL_MBCR_MB0_ENABLE);
  (void)MB_IN32(bay, KEYLARGO_MBCR);
  udelay(5);
  MB_BIC(bay, KEYLARGO_MBCR, 0x0000000F);
  (void)MB_IN32(bay, KEYLARGO_MBCR);
  udelay(5);
  bay->cached_gpio = new_gpio;
 }
 return (MB_IN32(bay, KEYLARGO_MBCR) >> 4) & 7;
}
