
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zd_mc_hash {int low; int high; } ;



__attribute__((used)) static inline void zd_mc_add_all(struct zd_mc_hash *hash)
{
 hash->low = hash->high = 0xffffffff;
}
