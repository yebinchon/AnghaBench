
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct bnx2x {int igu_base_sb; } ;



__attribute__((used)) static inline u8 bnx2x_cnic_igu_sb_id(struct bnx2x *bp)
{
 return bp->igu_base_sb;
}
