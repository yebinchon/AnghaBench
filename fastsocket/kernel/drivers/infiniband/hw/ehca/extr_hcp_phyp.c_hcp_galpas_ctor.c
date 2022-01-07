
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_4__ {int fw_handle; } ;
struct TYPE_3__ {scalar_t__ fw_handle; } ;
struct h_galpas {TYPE_2__ user; TYPE_1__ kernel; } ;


 int ENOMEM ;
 scalar_t__ hcall_map_page (int ) ;

int hcp_galpas_ctor(struct h_galpas *galpas, int is_user,
      u64 paddr_kernel, u64 paddr_user)
{
 if (!is_user) {
  galpas->kernel.fw_handle = hcall_map_page(paddr_kernel);
  if (!galpas->kernel.fw_handle)
   return -ENOMEM;
 } else
  galpas->kernel.fw_handle = 0;

 galpas->user.fw_handle = paddr_user;

 return 0;
}
