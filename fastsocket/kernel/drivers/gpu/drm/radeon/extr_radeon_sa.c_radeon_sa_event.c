
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_sa_manager {int * flist; } ;


 int RADEON_NUM_RINGS ;
 int list_empty (int *) ;
 unsigned int radeon_sa_bo_hole_eoffset (struct radeon_sa_manager*) ;
 unsigned int radeon_sa_bo_hole_soffset (struct radeon_sa_manager*) ;

__attribute__((used)) static bool radeon_sa_event(struct radeon_sa_manager *sa_manager,
       unsigned size, unsigned align)
{
 unsigned soffset, eoffset, wasted;
 int i;

 for (i = 0; i < RADEON_NUM_RINGS; ++i) {
  if (!list_empty(&sa_manager->flist[i])) {
   return 1;
  }
 }

 soffset = radeon_sa_bo_hole_soffset(sa_manager);
 eoffset = radeon_sa_bo_hole_eoffset(sa_manager);
 wasted = (align - (soffset % align)) % align;

 if ((eoffset - soffset) >= (size + wasted)) {
  return 1;
 }

 return 0;
}
