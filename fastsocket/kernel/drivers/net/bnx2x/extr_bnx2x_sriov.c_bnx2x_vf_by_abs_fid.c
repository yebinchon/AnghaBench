
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct bnx2x_virtf {int dummy; } ;
struct bnx2x {int dummy; } ;


 scalar_t__ BNX2X_NR_VIRTFN (struct bnx2x*) ;
 struct bnx2x_virtf* BP_VF (struct bnx2x*,scalar_t__) ;
 int bnx2x_vf_idx_by_abs_fid (struct bnx2x*,scalar_t__) ;

__attribute__((used)) static
struct bnx2x_virtf *bnx2x_vf_by_abs_fid(struct bnx2x *bp, u16 abs_vfid)
{
 u16 idx = (u16)bnx2x_vf_idx_by_abs_fid(bp, abs_vfid);
 return (idx < BNX2X_NR_VIRTFN(bp)) ? BP_VF(bp, idx) : ((void*)0);
}
