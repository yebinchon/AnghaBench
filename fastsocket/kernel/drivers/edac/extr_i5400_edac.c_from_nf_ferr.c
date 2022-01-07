
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int EMASK_M29 ;

__attribute__((used)) static inline int from_nf_ferr(unsigned int mask)
{
 return (mask & EMASK_M29) |
        (mask & ((1 << 28) - 1) << 3);
}
