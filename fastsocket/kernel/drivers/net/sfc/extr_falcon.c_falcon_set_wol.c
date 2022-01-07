
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct efx_nic {int dummy; } ;


 int EINVAL ;

__attribute__((used)) static int falcon_set_wol(struct efx_nic *efx, u32 type)
{
 if (type != 0)
  return -EINVAL;
 return 0;
}
