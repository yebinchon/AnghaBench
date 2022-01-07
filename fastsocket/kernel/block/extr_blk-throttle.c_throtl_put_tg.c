
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct throtl_grp {int rcu_head; int ref; } ;


 int BUG_ON (int) ;
 int atomic_dec_and_test (int *) ;
 scalar_t__ atomic_read (int *) ;
 int call_rcu (int *,int ) ;
 int throtl_free_tg ;

__attribute__((used)) static void throtl_put_tg(struct throtl_grp *tg)
{
 BUG_ON(atomic_read(&tg->ref) <= 0);
 if (!atomic_dec_and_test(&tg->ref))
  return;
 call_rcu(&tg->rcu_head, throtl_free_tg);
}
