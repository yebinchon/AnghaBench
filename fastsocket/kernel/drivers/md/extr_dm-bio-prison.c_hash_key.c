
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct dm_cell_key {unsigned long const block; } ;
struct dm_bio_prison {int hash_mask; } ;



__attribute__((used)) static uint32_t hash_key(struct dm_bio_prison *prison, struct dm_cell_key *key)
{
 const unsigned long BIG_PRIME = 4294967291UL;
 uint64_t hash = key->block * BIG_PRIME;

 return (uint32_t) (hash & prison->hash_mask);
}
