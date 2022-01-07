
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int dummy; } ;


 unsigned int ETH_TEST_FL_OFFLINE ;
 int efx_mdio_an_reconfigure (struct efx_nic*) ;
 int tenxpress_special_reset (struct efx_nic*) ;

__attribute__((used)) static int
sfx7101_run_tests(struct efx_nic *efx, int *results, unsigned flags)
{
 int rc;

 if (!(flags & ETH_TEST_FL_OFFLINE))
  return 0;


 rc = tenxpress_special_reset(efx);
 results[0] = rc ? -1 : 1;

 efx_mdio_an_reconfigure(efx);

 return rc;
}
