
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int floating_point_load_or_store_p(unsigned int insn)
{
 return (insn >> 24) & 1;
}
