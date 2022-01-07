
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct vf_pf_resc_request {int num_mac_filters; int num_vlan_filters; scalar_t__ num_mc_filters; scalar_t__ num_txqs; scalar_t__ num_rxqs; } ;
struct TYPE_2__ {int (* check ) (TYPE_1__*) ;} ;
struct bnx2x {TYPE_1__ vlans_pool; } ;


 int BNX2X_NR_VIRTFN (struct bnx2x*) ;
 int ilog2 (int) ;
 int stub1 (TYPE_1__*) ;

__attribute__((used)) static void
bnx2x_iov_static_resc(struct bnx2x *bp, struct vf_pf_resc_request *resc)
{
 u16 vlan_count = 0;


 resc->num_rxqs = 0;
 resc->num_txqs = 0;


 resc->num_mac_filters = 1;


 vlan_count = bp->vlans_pool.check(&bp->vlans_pool);
 vlan_count = 1 << ilog2(vlan_count);
 resc->num_vlan_filters = vlan_count / BNX2X_NR_VIRTFN(bp);


 resc->num_mc_filters = 0;


}
