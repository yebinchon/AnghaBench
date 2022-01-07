
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x {int cmng; } ;


 int BP_PORT (struct bnx2x*) ;
 int CMNG_FNS_NONE ;
 int DP (int ,char*) ;
 int NETIF_MSG_IFUP ;
 int bnx2x_cmng_fns_init (struct bnx2x*,int,int) ;
 int bnx2x_get_cmng_fns_mode (struct bnx2x*) ;
 int storm_memset_cmng (struct bnx2x*,int *,int ) ;

void bnx2x_set_local_cmng(struct bnx2x *bp)
{
 int cmng_fns = bnx2x_get_cmng_fns_mode(bp);

 if (cmng_fns != CMNG_FNS_NONE) {
  bnx2x_cmng_fns_init(bp, 0, cmng_fns);
  storm_memset_cmng(bp, &bp->cmng, BP_PORT(bp));
 } else {

  DP(NETIF_MSG_IFUP,
     "single function mode without fairness\n");
 }
}
