
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct bnx2x {int dummy; } ;


 scalar_t__ BNX2X_FIRST_VF_CID ;
 scalar_t__ BNX2X_VF_CIDS ;

__attribute__((used)) static u8 bnx2x_iov_is_vf_cid(struct bnx2x *bp, u16 cid)
{
 return ((cid >= BNX2X_FIRST_VF_CID) &&
  ((cid - BNX2X_FIRST_VF_CID) < BNX2X_VF_CIDS));
}
