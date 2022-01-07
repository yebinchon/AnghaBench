
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stripe_cache {int dummy; } ;
struct stripe {int dummy; } ;


 int LIST_FLUSH ;
 int POP_LIST (int ) ;

__attribute__((used)) static struct stripe *stripe_io_pop(struct stripe_cache *sc)
{
 struct stripe *stripe;

 POP_LIST(LIST_FLUSH);
 return stripe;
}
