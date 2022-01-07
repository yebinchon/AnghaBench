
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nouveau_ramht {int bits; } ;



__attribute__((used)) static u32
nouveau_ramht_hash(struct nouveau_ramht *ramht, int chid, u32 handle)
{
 u32 hash = 0;

 while (handle) {
  hash ^= (handle & ((1 << ramht->bits) - 1));
  handle >>= ramht->bits;
 }

 hash ^= chid << (ramht->bits - 4);
 hash = hash << 3;
 return hash;
}
