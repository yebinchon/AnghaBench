
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int end_addr; int begin_addr; scalar_t__ func_num; TYPE_3__* patches; } ;
typedef TYPE_1__ scope_t ;
struct TYPE_8__ {scalar_t__ skip_instr; int skip_patch; int begin; scalar_t__ patch_func; } ;
typedef TYPE_2__ patch_t ;
struct TYPE_9__ {scalar_t__ skip_instr; int skip_patch; } ;
typedef TYPE_3__ patch_info_t ;


 int EX_OSERR ;
 int STAILQ_INSERT_TAIL (int *,TYPE_2__*,int ) ;
 int links ;
 scalar_t__ malloc (int) ;
 int memset (TYPE_2__*,int ,int) ;
 int patches ;
 int stop (char*,int ) ;

void
emit_patch(scope_t *scope, int patch)
{
 patch_info_t *pinfo;
 patch_t *new_patch;

 pinfo = &scope->patches[patch];

 if (pinfo->skip_instr == 0)

  return;

 new_patch = (patch_t *)malloc(sizeof(*new_patch));

 if (new_patch == ((void*)0))
  stop("Could not malloc patch structure", EX_OSERR);

 memset(new_patch, 0, sizeof(*new_patch));

 if (patch == 0) {
  new_patch->patch_func = scope->func_num;
  new_patch->begin = scope->begin_addr;
 } else {
  new_patch->patch_func = 0;
  new_patch->begin = scope->end_addr;
 }
 new_patch->skip_instr = pinfo->skip_instr;
 new_patch->skip_patch = pinfo->skip_patch;
 STAILQ_INSERT_TAIL(&patches, new_patch, links);
}
