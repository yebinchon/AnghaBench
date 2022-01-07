
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ link_up; } ;
struct bnx2x {int cmng; TYPE_1__ link_vars; } ;


 int BP_PORT (struct bnx2x*) ;
 int CMNG_FNS_MINMAX ;
 int bnx2x_cmng_fns_init (struct bnx2x*,int,int ) ;
 int bnx2x_link_sync_notify (struct bnx2x*) ;
 int storm_memset_cmng (struct bnx2x*,int *,int ) ;

__attribute__((used)) static void bnx2x_config_mf_bw(struct bnx2x *bp)
{
 if (bp->link_vars.link_up) {
  bnx2x_cmng_fns_init(bp, 1, CMNG_FNS_MINMAX);
  bnx2x_link_sync_notify(bp);
 }
 storm_memset_cmng(bp, &bp->cmng, BP_PORT(bp));
}
