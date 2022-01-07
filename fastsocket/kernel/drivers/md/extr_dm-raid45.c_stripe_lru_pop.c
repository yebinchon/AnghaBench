
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stripe_cache {int dummy; } ;
struct stripe {int dummy; } ;


 int LIST_LRU ;
 int POP_LIST (int ) ;

__attribute__((used)) static struct stripe *stripe_lru_pop(struct stripe_cache *sc)
{
 struct stripe *stripe;

 POP_LIST(LIST_LRU);
 return stripe;
}
