
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct decode_cache {int dummy; } ;


 unsigned long address_mask (struct decode_cache*,unsigned long) ;

__attribute__((used)) static inline unsigned long
register_address(struct decode_cache *c, unsigned long base, unsigned long reg)
{
 return base + address_mask(c, reg);
}
