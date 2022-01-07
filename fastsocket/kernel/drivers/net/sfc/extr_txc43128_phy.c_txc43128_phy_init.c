
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int dummy; } ;


 int txc_apply_defaults (struct efx_nic*) ;
 int txc_bist (struct efx_nic*) ;
 int txc_reset_phy (struct efx_nic*) ;

__attribute__((used)) static int txc43128_phy_init(struct efx_nic *efx)
{
 int rc;

 rc = txc_reset_phy(efx);
 if (rc < 0)
  return rc;

 rc = txc_bist(efx);
 if (rc < 0)
  return rc;

 txc_apply_defaults(efx);

 return 0;
}
