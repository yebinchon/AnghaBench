
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct efx_vf {scalar_t__ txq_count; int txq_lock; int tx_filter_mode; } ;
struct efx_nic {int vf_init_count; struct efx_vf* vf; } ;


 int EBUSY ;
 int EINVAL ;
 int VF_TX_FILTER_OFF ;
 int VF_TX_FILTER_ON ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct efx_nic* netdev_priv (struct net_device*) ;

int efx_sriov_set_vf_spoofchk(struct net_device *net_dev, int vf_i,
         bool spoofchk)
{
 struct efx_nic *efx = netdev_priv(net_dev);
 struct efx_vf *vf;
 int rc;

 if (vf_i >= efx->vf_init_count)
  return -EINVAL;
 vf = efx->vf + vf_i;

 mutex_lock(&vf->txq_lock);
 if (vf->txq_count == 0) {
  vf->tx_filter_mode =
   spoofchk ? VF_TX_FILTER_ON : VF_TX_FILTER_OFF;
  rc = 0;
 } else {

  rc = -EBUSY;
 }
 mutex_unlock(&vf->txq_lock);
 return rc;
}
