
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 scalar_t__ VPFE_RAW_BAYER ;
 int ccdc_enable_vport (int) ;
 scalar_t__ ccdc_if_type ;
 int ccdc_restore_defaults () ;
 struct device* dev ;

__attribute__((used)) static int ccdc_open(struct device *device)
{
 dev = device;
 ccdc_restore_defaults();
 if (ccdc_if_type == VPFE_RAW_BAYER)
  ccdc_enable_vport(1);
 return 0;
}
