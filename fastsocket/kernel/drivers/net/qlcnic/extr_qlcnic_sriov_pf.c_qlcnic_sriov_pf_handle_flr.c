
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qlcnic_vf_info {int pci_func; int state; TYPE_1__* adapter; } ;
struct qlcnic_sriov {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {struct net_device* netdev; } ;


 int QLC_BC_VF_FLR ;
 int QLC_BC_VF_STATE ;
 int clear_bit (int ,int *) ;
 int netdev_info (struct net_device*,char*,int ) ;
 int qlcnic_sriov_pf_process_flr ;
 int qlcnic_sriov_schedule_flr (struct qlcnic_sriov*,struct qlcnic_vf_info*,int ) ;
 int test_and_clear_bit (int ,int *) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

void qlcnic_sriov_pf_handle_flr(struct qlcnic_sriov *sriov,
    struct qlcnic_vf_info *vf)
{
 struct net_device *dev = vf->adapter->netdev;

 if (!test_and_clear_bit(QLC_BC_VF_STATE, &vf->state)) {
  clear_bit(QLC_BC_VF_FLR, &vf->state);
  return;
 }

 if (test_and_set_bit(QLC_BC_VF_FLR, &vf->state)) {
  netdev_info(dev, "FLR for PCI func %d in progress\n",
       vf->pci_func);
  return;
 }

 qlcnic_sriov_schedule_flr(sriov, vf, qlcnic_sriov_pf_process_flr);
 netdev_info(dev, "FLR received for PCI func %d\n", vf->pci_func);
}
