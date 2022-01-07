
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct throtl_grp {int * slice_end; int * slice_start; } ;
struct throtl_data {int dummy; } ;


 int jiffies ;
 scalar_t__ time_in_range (int ,int ,int ) ;

__attribute__((used)) static bool
throtl_slice_used(struct throtl_data *td, struct throtl_grp *tg, bool rw)
{
 if (time_in_range(jiffies, tg->slice_start[rw], tg->slice_end[rw]))
  return 0;

 return 1;
}
