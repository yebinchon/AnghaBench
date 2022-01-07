
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ fw_handle; } ;
struct TYPE_3__ {scalar_t__ fw_handle; } ;
struct h_galpas {TYPE_2__ kernel; TYPE_1__ user; } ;


 int hcall_unmap_page (scalar_t__) ;

int hcp_galpas_dtor(struct h_galpas *galpas)
{
 if (galpas->kernel.fw_handle) {
  int ret = hcall_unmap_page(galpas->kernel.fw_handle);
  if (ret)
   return ret;
 }

 galpas->user.fw_handle = galpas->kernel.fw_handle = 0;

 return 0;
}
