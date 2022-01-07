
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ixgbe_adapter {int dummy; } ;


 int ixgbe_free_desc_rings (struct ixgbe_adapter*) ;
 int ixgbe_loopback_cleanup (struct ixgbe_adapter*) ;
 int ixgbe_run_loopback_test (struct ixgbe_adapter*) ;
 int ixgbe_setup_desc_rings (struct ixgbe_adapter*) ;
 int ixgbe_setup_loopback_test (struct ixgbe_adapter*) ;

__attribute__((used)) static int ixgbe_loopback_test(struct ixgbe_adapter *adapter, u64 *data)
{
 *data = ixgbe_setup_desc_rings(adapter);
 if (*data)
  goto out;
 *data = ixgbe_setup_loopback_test(adapter);
 if (*data)
  goto err_loopback;
 *data = ixgbe_run_loopback_test(adapter);
 ixgbe_loopback_cleanup(adapter);

err_loopback:
 ixgbe_free_desc_rings(adapter);
out:
 return *data;
}
