
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ gama_wd; scalar_t__ enable; } ;
struct ccdc_config_params_raw {scalar_t__ data_sz; TYPE_1__ alaw; } ;


 scalar_t__ CCDC_GAMMA_BITS_09_0 ;
 scalar_t__ CCDC_GAMMA_BITS_15_6 ;
 int dev ;
 int dev_dbg (int ,char*) ;

__attribute__((used)) static int validate_ccdc_param(struct ccdc_config_params_raw *ccdcparam)
{
 if (ccdcparam->alaw.enable) {
  if ((ccdcparam->alaw.gama_wd > CCDC_GAMMA_BITS_09_0) ||
      (ccdcparam->alaw.gama_wd < CCDC_GAMMA_BITS_15_6) ||
      (ccdcparam->alaw.gama_wd < ccdcparam->data_sz)) {
   dev_dbg(dev, "\nInvalid data line select");
   return -1;
  }
 }
 return 0;
}
