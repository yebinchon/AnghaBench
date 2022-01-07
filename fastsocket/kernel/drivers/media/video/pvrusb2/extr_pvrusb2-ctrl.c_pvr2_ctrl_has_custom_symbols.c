
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pvr2_ctrl {TYPE_1__* info; } ;
struct TYPE_2__ {int sym_to_val; int val_to_sym; } ;



int pvr2_ctrl_has_custom_symbols(struct pvr2_ctrl *cptr)
{
 if (!cptr) return 0;
 if (!cptr->info->val_to_sym) return 0;
 if (!cptr->info->sym_to_val) return 0;
 return !0;
}
