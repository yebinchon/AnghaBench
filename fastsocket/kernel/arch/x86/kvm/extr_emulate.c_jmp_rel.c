
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct decode_cache {int eip; } ;


 int register_address_increment (struct decode_cache*,int *,int) ;

__attribute__((used)) static inline void jmp_rel(struct decode_cache *c, int rel)
{
 register_address_increment(c, &c->eip, rel);
}
