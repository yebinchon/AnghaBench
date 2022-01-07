
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int gp_addr ;
 unsigned int gp_offs ;

__attribute__((used)) static inline void save_gp_address(unsigned int secbase, unsigned int rel)
{
 gp_addr = secbase + rel;
 gp_offs = gp_addr - (secbase & 0xffff0000);
}
