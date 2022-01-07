
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct bnx2x {int dummy; } ;


 int bnx2x_vf_enable_access (struct bnx2x*,int ) ;
 int bnx2x_vf_flr_clnup_epilog (struct bnx2x*,int ) ;
 int storm_memset_vf_mbx_ack (struct bnx2x*,int ) ;
 int storm_memset_vf_mbx_valid (struct bnx2x*,int ) ;

void bnx2x_vf_enable_mbx(struct bnx2x *bp, u8 abs_vfid)
{
 bnx2x_vf_flr_clnup_epilog(bp, abs_vfid);


 storm_memset_vf_mbx_ack(bp, abs_vfid);
 storm_memset_vf_mbx_valid(bp, abs_vfid);


 bnx2x_vf_enable_access(bp, abs_vfid);
}
