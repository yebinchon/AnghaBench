
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct decode_cache {int ad_bytes; } ;



__attribute__((used)) static inline unsigned long ad_mask(struct decode_cache *c)
{
 return (1UL << (c->ad_bytes << 3)) - 1;
}
