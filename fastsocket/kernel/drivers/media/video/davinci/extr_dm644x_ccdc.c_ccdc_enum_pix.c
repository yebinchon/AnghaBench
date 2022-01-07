
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ARRAY_SIZE (int *) ;
 int EINVAL ;
 scalar_t__ VPFE_RAW_BAYER ;
 scalar_t__ ccdc_if_type ;
 int * ccdc_raw_bayer_pix_formats ;
 int * ccdc_raw_yuv_pix_formats ;

__attribute__((used)) static int ccdc_enum_pix(u32 *pix, int i)
{
 int ret = -EINVAL;
 if (ccdc_if_type == VPFE_RAW_BAYER) {
  if (i < ARRAY_SIZE(ccdc_raw_bayer_pix_formats)) {
   *pix = ccdc_raw_bayer_pix_formats[i];
   ret = 0;
  }
 } else {
  if (i < ARRAY_SIZE(ccdc_raw_yuv_pix_formats)) {
   *pix = ccdc_raw_yuv_pix_formats[i];
   ret = 0;
  }
 }
 return ret;
}
