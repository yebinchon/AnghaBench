
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vpfe_hw_if_param {int if_type; int hdpol; int vdpol; } ;
struct TYPE_2__ {int hd_pol; int vd_pol; } ;


 int EINVAL ;



 TYPE_1__ ccdc_hw_params_ycbcr ;
 int ccdc_if_type ;

__attribute__((used)) static int ccdc_set_hw_if_params(struct vpfe_hw_if_param *params)
{
 ccdc_if_type = params->if_type;

 switch (params->if_type) {
 case 130:
 case 129:
 case 128:
  ccdc_hw_params_ycbcr.vd_pol = params->vdpol;
  ccdc_hw_params_ycbcr.hd_pol = params->hdpol;
  break;
 default:

  return -EINVAL;
 }
 return 0;
}
