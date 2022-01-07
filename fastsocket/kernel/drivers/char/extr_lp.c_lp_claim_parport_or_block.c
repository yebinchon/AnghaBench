
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lp_struct {int dev; int bits; } ;


 int LP_PARPORT_CLAIMED ;
 int parport_claim_or_block (int ) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static void lp_claim_parport_or_block(struct lp_struct *this_lp)
{
 if (!test_and_set_bit(LP_PARPORT_CLAIMED, &this_lp->bits)) {
  parport_claim_or_block (this_lp->dev);
 }
}
