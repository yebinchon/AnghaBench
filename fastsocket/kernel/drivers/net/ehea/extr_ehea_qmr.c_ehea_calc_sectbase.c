
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EHEA_DIR_INDEX_SHIFT ;
 int EHEA_TOP_INDEX_SHIFT ;
 unsigned long SECTION_SIZE_BITS ;
 void* abs_to_virt (unsigned long) ;

__attribute__((used)) static inline void *ehea_calc_sectbase(int top, int dir, int idx)
{
 unsigned long ret = idx;
 ret |= dir << EHEA_DIR_INDEX_SHIFT;
 ret |= top << EHEA_TOP_INDEX_SHIFT;
 return abs_to_virt(ret << SECTION_SIZE_BITS);
}
