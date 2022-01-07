
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long EHCA_INDEX_MASK ;

__attribute__((used)) static inline int ehca_calc_index(unsigned long i, unsigned long s)
{
 return (i >> s) & EHCA_INDEX_MASK;
}
