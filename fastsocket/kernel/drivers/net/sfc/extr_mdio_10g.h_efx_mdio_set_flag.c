
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int prtad; } ;
struct efx_nic {TYPE_1__ mdio; } ;


 int mdio_set_flag (TYPE_1__*,int ,int,int,int,int) ;

__attribute__((used)) static inline void
efx_mdio_set_flag(struct efx_nic *efx, int devad, int addr,
    int mask, bool state)
{
 mdio_set_flag(&efx->mdio, efx->mdio.prtad, devad, addr, mask, state);
}
