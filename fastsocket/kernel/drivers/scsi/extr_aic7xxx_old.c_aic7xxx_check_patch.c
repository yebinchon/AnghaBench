
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sequencer_patch {int begin; scalar_t__ (* patch_func ) (struct aic7xxx_host*) ;int skip_instr; int skip_patch; } ;
struct aic7xxx_host {int dummy; } ;


 int ARRAY_SIZE (struct sequencer_patch*) ;
 struct sequencer_patch* sequencer_patches ;
 scalar_t__ stub1 (struct aic7xxx_host*) ;

__attribute__((used)) static int
aic7xxx_check_patch(struct aic7xxx_host *p,
  struct sequencer_patch **start_patch, int start_instr, int *skip_addr)
{
  struct sequencer_patch *cur_patch;
  struct sequencer_patch *last_patch;
  int num_patches;

  num_patches = ARRAY_SIZE(sequencer_patches);
  last_patch = &sequencer_patches[num_patches];
  cur_patch = *start_patch;

  while ((cur_patch < last_patch) && (start_instr == cur_patch->begin))
  {
    if (cur_patch->patch_func(p) == 0)
    {



      *skip_addr = start_instr + cur_patch->skip_instr;
      cur_patch += cur_patch->skip_patch;
    }
    else
    {




      cur_patch++;
    }
  }

  *start_patch = cur_patch;
  if (start_instr < *skip_addr)



    return (0);
  return(1);
}
