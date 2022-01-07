
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stripe_head {struct r5dev* dev; } ;
struct r5dev {int flags; } ;


 int BUG_ON (int) ;
 int R5_UPTODATE ;
 int R5_Wantcompute ;
 int clear_bit (int ,int *) ;
 int set_bit (int ,int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void mark_target_uptodate(struct stripe_head *sh, int target)
{
 struct r5dev *tgt;

 if (target < 0)
  return;

 tgt = &sh->dev[target];
 set_bit(R5_UPTODATE, &tgt->flags);
 BUG_ON(!test_bit(R5_Wantcompute, &tgt->flags));
 clear_bit(R5_Wantcompute, &tgt->flags);
}
