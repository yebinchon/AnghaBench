
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct c4iw_rdev {int dummy; } ;


 int FW_RI_STAG_NSMR ;
 int T4_STAG_UNSET ;
 int write_tpt_entry (struct c4iw_rdev*,int ,int *,int ,int ,int ,int ,int ,int ,unsigned long,int ,int ,int ,int ) ;

__attribute__((used)) static int allocate_stag(struct c4iw_rdev *rdev, u32 *stag, u32 pdid,
    u32 pbl_size, u32 pbl_addr)
{
 *stag = T4_STAG_UNSET;
 return write_tpt_entry(rdev, 0, stag, 0, pdid, FW_RI_STAG_NSMR, 0, 0, 0,
          0UL, 0, 0, pbl_size, pbl_addr);
}
