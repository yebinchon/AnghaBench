
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EHCA_DIR_INDEX_SHIFT ;
 int EHCA_TOP_INDEX_SHIFT ;
 unsigned long SECTION_SIZE_BITS ;
 void* abs_to_virt (unsigned long) ;

__attribute__((used)) static inline void *ehca_calc_sectbase(int top, int dir, int idx)
{
 unsigned long ret = idx;
 ret |= dir << EHCA_DIR_INDEX_SHIFT;
 ret |= top << EHCA_TOP_INDEX_SHIFT;
 return abs_to_virt(ret << SECTION_SIZE_BITS);
}
