
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct qlcnic_vf_info {TYPE_1__* adapter; } ;
struct qlcnic_sriov {int dummy; } ;
struct qlcnic_bc_hdr {int msg_type; } ;
struct TYPE_2__ {int ahw; } ;


 int QLCNIC_MBX_FW (int ,int) ;


 int qlcnic_sriov_handle_bc_cmd (struct qlcnic_sriov*,struct qlcnic_bc_hdr*,struct qlcnic_vf_info*) ;
 int qlcnic_sriov_handle_bc_resp (struct qlcnic_bc_hdr*,struct qlcnic_vf_info*) ;
 int readl (int ) ;

__attribute__((used)) static void qlcnic_sriov_handle_msg_event(struct qlcnic_sriov *sriov,
       struct qlcnic_vf_info *vf)
{
 struct qlcnic_bc_hdr hdr;
 u32 *ptr = (u32 *)&hdr;
 u8 msg_type, i;

 for (i = 2; i < 6; i++)
  ptr[i - 2] = readl(QLCNIC_MBX_FW(vf->adapter->ahw, i));
 msg_type = hdr.msg_type;

 switch (msg_type) {
 case 129:
  qlcnic_sriov_handle_bc_cmd(sriov, &hdr, vf);
  break;
 case 128:
  qlcnic_sriov_handle_bc_resp(&hdr, vf);
  break;
 }
}
