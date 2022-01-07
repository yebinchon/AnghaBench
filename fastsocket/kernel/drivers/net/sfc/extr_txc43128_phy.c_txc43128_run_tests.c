
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int dummy; } ;


 unsigned int ETH_TEST_FL_OFFLINE ;
 int txc_apply_defaults (struct efx_nic*) ;
 int txc_bist (struct efx_nic*) ;
 int txc_reset_phy (struct efx_nic*) ;

__attribute__((used)) static int txc43128_run_tests(struct efx_nic *efx, int *results, unsigned flags)
{
 int rc;

 if (!(flags & ETH_TEST_FL_OFFLINE))
  return 0;

 rc = txc_reset_phy(efx);
 if (rc < 0)
  return rc;

 rc = txc_bist(efx);
 txc_apply_defaults(efx);
 results[0] = rc ? -1 : 1;
 return rc;
}
