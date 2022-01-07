
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct c4iw_rdev {int dummy; } ;


 int FW_RI_STAG_MW ;
 int T4_STAG_UNSET ;
 int write_tpt_entry (struct c4iw_rdev*,int ,int *,int ,int ,int ,int ,int ,int ,unsigned long,int ,int ,int ,int ) ;

__attribute__((used)) static int allocate_window(struct c4iw_rdev *rdev, u32 * stag, u32 pdid)
{
 *stag = T4_STAG_UNSET;
 return write_tpt_entry(rdev, 0, stag, 0, pdid, FW_RI_STAG_MW, 0, 0, 0,
          0UL, 0, 0, 0, 0);
}
