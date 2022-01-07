
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stripe_hash {int * hash; } ;


 int vfree (int *) ;

__attribute__((used)) static void hash_exit(struct stripe_hash *hash)
{
 if (hash->hash) {
  vfree(hash->hash);
  hash->hash = ((void*)0);
 }
}
