
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stripe_head {int state; scalar_t__ reconstruct_state; scalar_t__ check_state; } ;


 int STRIPE_BIOFILL_RUN ;
 int STRIPE_COMPUTE_RUN ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int stripe_operations_active(struct stripe_head *sh)
{
 return sh->check_state || sh->reconstruct_state ||
        test_bit(STRIPE_BIOFILL_RUN, &sh->state) ||
        test_bit(STRIPE_COMPUTE_RUN, &sh->state);
}
