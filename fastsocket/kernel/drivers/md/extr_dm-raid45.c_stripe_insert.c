
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stripe_hash {int dummy; } ;
struct stripe {int key; scalar_t__ lists; } ;


 scalar_t__ LIST_HASH ;
 int hash_bucket (struct stripe_hash*,int ) ;
 int list_add (scalar_t__,int ) ;

__attribute__((used)) static void stripe_insert(struct stripe_hash *hash, struct stripe *stripe)
{
 list_add(stripe->lists + LIST_HASH, hash_bucket(hash, stripe->key));
}
