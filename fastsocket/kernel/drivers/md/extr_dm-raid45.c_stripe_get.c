
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stripe {int key; int cnt; struct list_head* lists; } ;
struct list_head {int dummy; } ;


 int BUG_ON (int) ;
 int DEL_LIST (struct list_head*) ;
 int LIST_LRU ;
 int WRITE ;
 int atomic_inc_return (int *) ;
 int stripe_lock (struct stripe*,int ,int ) ;
 scalar_t__ stripe_ref (struct stripe*) ;

__attribute__((used)) static int stripe_get(struct stripe *stripe)
{
 int r;
 struct list_head *lh = stripe->lists + LIST_LRU;


 DEL_LIST(lh);
 BUG_ON(stripe_ref(stripe) < 0);


 r = (atomic_inc_return(&stripe->cnt) == 1) ?
     stripe_lock(stripe, WRITE, stripe->key) : 0;

 return r;
}
