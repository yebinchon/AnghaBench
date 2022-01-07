
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int * pfs_loc; int ip; } ;
struct TYPE_6__ {TYPE_3__ frame; int * prev_pfs_loc; TYPE_1__* regs; } ;
typedef TYPE_2__ ia64_backtrace_t ;
struct TYPE_5__ {int ar_pfs; } ;


 scalar_t__ in_ivt_code (int ) ;
 scalar_t__ unw_unwind (TYPE_3__*) ;

__attribute__((used)) static __inline__ int next_frame(ia64_backtrace_t *bt)
{





 if (in_ivt_code(bt->frame.ip))
  return 0;
 if (bt->prev_pfs_loc && bt->regs && bt->frame.pfs_loc == bt->prev_pfs_loc)
  bt->frame.pfs_loc = &bt->regs->ar_pfs;
 bt->prev_pfs_loc = ((void*)0);

 return unw_unwind(&bt->frame) == 0;
}
