
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
union efx_ioctl_data {TYPE_1__ reset_flags; } ;
struct efx_nic {int net_dev; } ;


 int efx_ethtool_reset (int ,int *) ;

__attribute__((used)) static int
efx_ioctl_reset_flags(struct efx_nic *efx, union efx_ioctl_data *data)
{
 return efx_ethtool_reset(efx->net_dev, &data->reset_flags.flags);
}
