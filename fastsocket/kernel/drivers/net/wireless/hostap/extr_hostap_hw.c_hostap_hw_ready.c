
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct local_info {scalar_t__ iw_mode; int proc; scalar_t__ ddev; scalar_t__ dev; } ;
struct hostap_interface {struct local_info* local; } ;


 int HOSTAP_INTERFACE_MAIN ;
 scalar_t__ IW_MODE_ADHOC ;
 scalar_t__ IW_MODE_INFRA ;
 int dev_template ;
 scalar_t__ hostap_add_interface (struct local_info*,int ,int ,char*,int ) ;
 int hostap_init_ap_proc (struct local_info*) ;
 int hostap_init_proc (struct local_info*) ;
 struct hostap_interface* netdev_priv (struct net_device*) ;
 int netif_carrier_off (scalar_t__) ;
 int prism2_registers_proc_fops ;
 int proc_create_data (char*,int ,int ,int *,struct local_info*) ;

__attribute__((used)) static int hostap_hw_ready(struct net_device *dev)
{
 struct hostap_interface *iface;
 struct local_info *local;

 iface = netdev_priv(dev);
 local = iface->local;
 local->ddev = hostap_add_interface(local, HOSTAP_INTERFACE_MAIN, 0,
        "", dev_template);

 if (local->ddev) {
  if (local->iw_mode == IW_MODE_INFRA ||
      local->iw_mode == IW_MODE_ADHOC) {
   netif_carrier_off(local->dev);
   netif_carrier_off(local->ddev);
  }
  hostap_init_proc(local);

  proc_create_data("registers", 0, local->proc,
     &prism2_registers_proc_fops, local);

  hostap_init_ap_proc(local);
  return 0;
 }

 return -1;
}
