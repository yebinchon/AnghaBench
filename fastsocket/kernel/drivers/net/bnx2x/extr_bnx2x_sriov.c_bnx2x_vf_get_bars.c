
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bnx2x_virtf {int * bars; } ;
struct bnx2x_vf_bar_info {int nr_bars; int * bars; } ;
struct bnx2x {TYPE_2__* vfdb; } ;
struct TYPE_3__ {int nres; } ;
struct TYPE_4__ {TYPE_1__ sriov; } ;



__attribute__((used)) static inline void bnx2x_vf_get_bars(struct bnx2x *bp, struct bnx2x_virtf *vf,
         struct bnx2x_vf_bar_info *bar_info)
{
 int n;

 bar_info->nr_bars = bp->vfdb->sriov.nres;
 for (n = 0; n < bar_info->nr_bars; n++)
  bar_info->bars[n] = vf->bars[n];
}
