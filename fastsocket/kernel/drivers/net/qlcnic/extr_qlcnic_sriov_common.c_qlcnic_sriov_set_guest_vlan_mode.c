
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct qlcnic_sriov {int any_vlan; int num_allowed_vlans; int * allowed_vlans; } ;
struct TYPE_4__ {int* arg; } ;
struct qlcnic_cmd_args {TYPE_2__ rsp; } ;
struct qlcnic_adapter {TYPE_1__* ahw; } ;
struct TYPE_3__ {struct qlcnic_sriov* sriov; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int * kzalloc (int,int ) ;

__attribute__((used)) static int qlcnic_sriov_set_guest_vlan_mode(struct qlcnic_adapter *adapter,
         struct qlcnic_cmd_args *cmd)
{
 struct qlcnic_sriov *sriov = adapter->ahw->sriov;
 int i, num_vlans;
 u16 *vlans;

 if (sriov->allowed_vlans)
  return 0;

 sriov->any_vlan = cmd->rsp.arg[2] & 0xf;
 if (!sriov->any_vlan)
  return 0;

 sriov->num_allowed_vlans = cmd->rsp.arg[2] >> 16;
 num_vlans = sriov->num_allowed_vlans;
 sriov->allowed_vlans = kzalloc(sizeof(u16) * num_vlans, GFP_KERNEL);
 if (!sriov->allowed_vlans)
  return -ENOMEM;

 vlans = (u16 *)&cmd->rsp.arg[3];
 for (i = 0; i < num_vlans; i++)
  sriov->allowed_vlans[i] = vlans[i];

 return 0;
}
