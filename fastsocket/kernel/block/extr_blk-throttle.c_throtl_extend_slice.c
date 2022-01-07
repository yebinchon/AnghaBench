
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct throtl_grp {int * slice_end; int * slice_start; } ;
struct throtl_data {int dummy; } ;


 int READ ;
 int jiffies ;
 int roundup (unsigned long,int ) ;
 int throtl_log_tg (struct throtl_data*,struct throtl_grp*,char*,char,int ,int ,int ) ;
 int throtl_slice ;

__attribute__((used)) static inline void throtl_extend_slice(struct throtl_data *td,
  struct throtl_grp *tg, bool rw, unsigned long jiffy_end)
{
 tg->slice_end[rw] = roundup(jiffy_end, throtl_slice);
 throtl_log_tg(td, tg, "[%c] extend slice start=%lu end=%lu jiffies=%lu",
   rw == READ ? 'R' : 'W', tg->slice_start[rw],
   tg->slice_end[rw], jiffies);
}
