
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct throtl_grp {int * slice_end; } ;
struct throtl_data {int dummy; } ;


 int roundup (unsigned long,int ) ;
 int throtl_slice ;

__attribute__((used)) static inline void throtl_set_slice_end(struct throtl_data *td,
  struct throtl_grp *tg, bool rw, unsigned long jiffy_end)
{
 tg->slice_end[rw] = roundup(jiffy_end, throtl_slice);
}
