
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ VPFE_RAW_BAYER ;
 int ccdc_config_raw () ;
 int ccdc_config_ycbcr () ;
 scalar_t__ ccdc_if_type ;

__attribute__((used)) static int ccdc_configure(void)
{
 if (ccdc_if_type == VPFE_RAW_BAYER)
  return ccdc_config_raw();
 else
  ccdc_config_ycbcr();
 return 0;
}
