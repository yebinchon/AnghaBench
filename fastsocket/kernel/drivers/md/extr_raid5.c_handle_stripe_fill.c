
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stripe_head_state {int dummy; } ;
struct stripe_head {int state; int reconstruct_state; int check_state; } ;


 int STRIPE_COMPUTE_RUN ;
 int STRIPE_HANDLE ;
 scalar_t__ fetch_block (struct stripe_head*,struct stripe_head_state*,int,int) ;
 int set_bit (int ,int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void handle_stripe_fill(struct stripe_head *sh,
          struct stripe_head_state *s,
          int disks)
{
 int i;





 if (!test_bit(STRIPE_COMPUTE_RUN, &sh->state) && !sh->check_state &&
     !sh->reconstruct_state)
  for (i = disks; i--; )
   if (fetch_block(sh, s, i, disks))
    break;
 set_bit(STRIPE_HANDLE, &sh->state);
}
