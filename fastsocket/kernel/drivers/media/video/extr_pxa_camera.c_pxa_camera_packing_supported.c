
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct soc_mbus_pixelfmt {scalar_t__ packing; int bits_per_sample; } ;


 scalar_t__ SOC_MBUS_PACKING_2X8_PADHI ;
 scalar_t__ SOC_MBUS_PACKING_EXTEND16 ;
 scalar_t__ SOC_MBUS_PACKING_NONE ;

__attribute__((used)) static bool pxa_camera_packing_supported(const struct soc_mbus_pixelfmt *fmt)
{
 return fmt->packing == SOC_MBUS_PACKING_NONE ||
  (fmt->bits_per_sample == 8 &&
   fmt->packing == SOC_MBUS_PACKING_2X8_PADHI) ||
  (fmt->bits_per_sample > 8 &&
   fmt->packing == SOC_MBUS_PACKING_EXTEND16);
}
