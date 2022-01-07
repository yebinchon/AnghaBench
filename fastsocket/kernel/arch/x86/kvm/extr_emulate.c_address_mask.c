
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct decode_cache {int ad_bytes; } ;


 unsigned long ad_mask (struct decode_cache*) ;

__attribute__((used)) static inline unsigned long
address_mask(struct decode_cache *c, unsigned long reg)
{
 if (c->ad_bytes == sizeof(unsigned long))
  return reg;
 else
  return reg & ad_mask(c);
}
