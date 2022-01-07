
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfpf_q_mac_vlan_filter {int flags; int mac; int vlan_tag; } ;
struct bnx2x {int dummy; } ;


 int DP (int,char*,int,int) ;
 int DP_CONT (int,char*,...) ;
 int VFPF_Q_FILTER_DEST_MAC_VALID ;
 int VFPF_Q_FILTER_VLAN_TAG_VALID ;

__attribute__((used)) static void bnx2x_vf_mbx_dp_q_filter(struct bnx2x *bp, int msglvl, int idx,
           struct vfpf_q_mac_vlan_filter *filter)
{
 DP(msglvl, "MAC-VLAN[%d] -- flags=0x%x\n", idx, filter->flags);
 if (filter->flags & VFPF_Q_FILTER_VLAN_TAG_VALID)
  DP_CONT(msglvl, ", vlan=%d", filter->vlan_tag);
 if (filter->flags & VFPF_Q_FILTER_DEST_MAC_VALID)
  DP_CONT(msglvl, ", MAC=%pM", filter->mac);
 DP_CONT(msglvl, "\n");
}
