
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LP_DELAY ;
 int LP_PINITP ;
 int LP_PSELECP ;
 int lp_claim_parport_or_block (int *) ;
 int lp_release_parport (int *) ;
 int * lp_table ;
 int r_str (int) ;
 int udelay (int ) ;
 int w_ctr (int,int) ;

__attribute__((used)) static int lp_reset(int minor)
{
 int retval;
 lp_claim_parport_or_block (&lp_table[minor]);
 w_ctr(minor, LP_PSELECP);
 udelay (LP_DELAY);
 w_ctr(minor, LP_PSELECP | LP_PINITP);
 retval = r_str(minor);
 lp_release_parport (&lp_table[minor]);
 return retval;
}
