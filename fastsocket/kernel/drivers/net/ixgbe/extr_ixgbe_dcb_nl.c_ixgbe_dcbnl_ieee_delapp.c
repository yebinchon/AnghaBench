
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct vf_data_storage {int pf_vlan; int pf_qos; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int up; } ;
struct ixgbe_adapter {int dcbx_cap; scalar_t__ default_up; int num_vfs; struct vf_data_storage* vfinfo; TYPE_1__ fcoe; } ;
struct dcb_app {scalar_t__ selector; scalar_t__ protocol; scalar_t__ priority; } ;


 int DCB_CAP_DCBX_VER_IEEE ;
 int EINVAL ;
 scalar_t__ ETH_P_FCOE ;
 scalar_t__ IEEE_8021QAZ_APP_SEL_ETHERTYPE ;
 int IXGBE_FCOE_DEFTC ;
 int dcb_ieee_delapp (struct net_device*,struct dcb_app*) ;
 void* dcb_ieee_getapp_mask (struct net_device*,struct dcb_app*) ;
 int ffs (int) ;
 int find_first_bit (unsigned long*,int) ;
 int ixgbe_dcbnl_devreset (struct net_device*) ;
 int ixgbe_set_vmvir (struct ixgbe_adapter*,int ,int,int) ;
 struct ixgbe_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ixgbe_dcbnl_ieee_delapp(struct net_device *dev,
       struct dcb_app *app)
{
 struct ixgbe_adapter *adapter = netdev_priv(dev);
 int err;

 if (!(adapter->dcbx_cap & DCB_CAP_DCBX_VER_IEEE))
  return -EINVAL;

 err = dcb_ieee_delapp(dev, app);
 if (app->selector == IEEE_8021QAZ_APP_SEL_ETHERTYPE &&
     app->protocol == 0 && adapter->default_up == app->priority) {
  int vf;
  long unsigned int app_mask = dcb_ieee_getapp_mask(dev, app);
  int qos = app_mask ? find_first_bit(&app_mask, 8) : 0;

  adapter->default_up = qos;

  for (vf = 0; vf < adapter->num_vfs; vf++) {
   struct vf_data_storage *vfinfo = &adapter->vfinfo[vf];

   if (!vfinfo->pf_qos)
    ixgbe_set_vmvir(adapter, vfinfo->pf_vlan,
      qos, vf);
  }
 }

 return err;
}
