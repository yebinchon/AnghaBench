
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device {int dummy; } ;
struct TYPE_3__ {int fp_num; scalar_t__ fpc_table_addr; } ;
struct ccdc_config_params_raw {TYPE_1__ fault_pxl; } ;
struct TYPE_4__ {struct ccdc_config_params_raw config_params; } ;


 int FP_NUM_BYTES ;
 TYPE_2__ ccdc_hw_params_raw ;
 int free_pages (unsigned long,int ) ;
 int get_order (int) ;
 scalar_t__ phys_to_virt (unsigned long) ;

__attribute__((used)) static int ccdc_close(struct device *dev)
{
 struct ccdc_config_params_raw *config_params =
  &ccdc_hw_params_raw.config_params;
 unsigned int *fpc_physaddr = ((void*)0), *fpc_virtaddr = ((void*)0);

 fpc_physaddr = (unsigned int *)config_params->fault_pxl.fpc_table_addr;

 if (fpc_physaddr != ((void*)0)) {
  fpc_virtaddr = (unsigned int *)
      phys_to_virt((unsigned long)fpc_physaddr);
  free_pages((unsigned long)fpc_virtaddr,
      get_order(config_params->fault_pxl.fp_num *
      FP_NUM_BYTES));
 }
 return 0;
}
