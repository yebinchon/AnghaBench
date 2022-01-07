
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
struct net_device {int dummy; } ;
struct ethtool_test {int flags; } ;
struct efx_self_tests {int dummy; } ;
struct efx_nic {scalar_t__ state; TYPE_1__* net_dev; } ;
struct TYPE_5__ {int flags; } ;


 int EIO ;
 int ENOMEM ;
 int ETH_TEST_FL_FAILED ;
 int ETH_TEST_FL_OFFLINE ;
 int GFP_KERNEL ;
 int IFF_UP ;
 scalar_t__ STATE_READY ;
 int dev_close (TYPE_1__*) ;
 int dev_open (TYPE_1__*) ;
 int drv ;
 int efx_ethtool_fill_self_tests (struct efx_nic*,struct efx_self_tests*,int *,int *) ;
 int efx_selftest (struct efx_nic*,struct efx_self_tests*,int) ;
 int kfree (struct efx_self_tests*) ;
 struct efx_self_tests* kzalloc (int,int ) ;
 struct efx_nic* netdev_priv (struct net_device*) ;
 int netif_err (struct efx_nic*,int ,TYPE_1__*,char*) ;
 int netif_info (struct efx_nic*,int ,TYPE_1__*,char*,char*,...) ;

__attribute__((used)) static void efx_ethtool_self_test(struct net_device *net_dev,
      struct ethtool_test *test, u64 *data)
{
 struct efx_nic *efx = netdev_priv(net_dev);
 struct efx_self_tests *efx_tests;
 int already_up;
 int rc = -ENOMEM;

 efx_tests = kzalloc(sizeof(*efx_tests), GFP_KERNEL);
 if (!efx_tests)
  goto fail;

 if (efx->state != STATE_READY) {
  rc = -EIO;
  goto fail1;
 }

 netif_info(efx, drv, efx->net_dev, "starting %sline testing\n",
     (test->flags & ETH_TEST_FL_OFFLINE) ? "off" : "on");


 already_up = (efx->net_dev->flags & IFF_UP);
 if (!already_up) {
  rc = dev_open(efx->net_dev);
  if (rc) {
   netif_err(efx, drv, efx->net_dev,
      "failed opening device.\n");
   goto fail1;
  }
 }

 rc = efx_selftest(efx, efx_tests, test->flags);

 if (!already_up)
  dev_close(efx->net_dev);

 netif_info(efx, drv, efx->net_dev, "%s %sline self-tests\n",
     rc == 0 ? "passed" : "failed",
     (test->flags & ETH_TEST_FL_OFFLINE) ? "off" : "on");

fail1:

 efx_ethtool_fill_self_tests(efx, efx_tests, ((void*)0), data);
 kfree(efx_tests);
fail:
 if (rc)
  test->flags |= ETH_TEST_FL_FAILED;
}
