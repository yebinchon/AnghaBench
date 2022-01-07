
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int prtad; int (* mdio_write ) (int ,int ,int,int,int) ;} ;
struct efx_nic {TYPE_1__ mdio; int net_dev; } ;


 int stub1 (int ,int ,int,int,int) ;

__attribute__((used)) static inline void
efx_mdio_write(struct efx_nic *efx, int devad, int addr, int value)
{
 efx->mdio.mdio_write(efx->net_dev, efx->mdio.prtad, devad, addr, value);
}
