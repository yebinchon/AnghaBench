
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stripe {scalar_t__ lists; } ;


 int DEL_LIST (scalar_t__) ;
 scalar_t__ LIST_HASH ;

__attribute__((used)) static void stripe_hash_del(struct stripe *stripe)
{
 DEL_LIST(stripe->lists + LIST_HASH);
}
