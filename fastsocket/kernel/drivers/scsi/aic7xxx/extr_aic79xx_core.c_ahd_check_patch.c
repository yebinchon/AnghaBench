
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct patch {size_t begin; scalar_t__ (* patch_func ) (struct ahd_softc*) ;size_t skip_instr; int skip_patch; } ;
struct ahd_softc {int dummy; } ;


 size_t ARRAY_SIZE (struct patch*) ;
 struct patch* patches ;
 scalar_t__ stub1 (struct ahd_softc*) ;

__attribute__((used)) static int
ahd_check_patch(struct ahd_softc *ahd, const struct patch **start_patch,
  u_int start_instr, u_int *skip_addr)
{
 const struct patch *cur_patch;
 const struct patch *last_patch;
 u_int num_patches;

 num_patches = ARRAY_SIZE(patches);
 last_patch = &patches[num_patches];
 cur_patch = *start_patch;

 while (cur_patch < last_patch && start_instr == cur_patch->begin) {

  if (cur_patch->patch_func(ahd) == 0) {


   *skip_addr = start_instr + cur_patch->skip_instr;
   cur_patch += cur_patch->skip_patch;
  } else {




   cur_patch++;
  }
 }

 *start_patch = cur_patch;
 if (start_instr < *skip_addr)

  return (0);

 return (1);
}
