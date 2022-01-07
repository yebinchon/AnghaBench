
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stripe_hash {int prime; int shift; int mask; } ;
typedef int sector_t ;



__attribute__((used)) static unsigned hash_fn(struct stripe_hash *hash, sector_t key)
{
 return (unsigned) (((key * hash->prime) >> hash->shift) & hash->mask);
}
