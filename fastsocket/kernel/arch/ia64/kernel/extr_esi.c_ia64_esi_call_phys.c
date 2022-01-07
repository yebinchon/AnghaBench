
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct pdesc {void* gp; void* addr; } ;
struct ia64_sal_retval {int dummy; } ;
struct ia64_fpreg {int dummy; } ;
typedef scalar_t__ ia64_sal_handler ;
struct TYPE_3__ {scalar_t__ gp; scalar_t__ esi_proc; int guid; } ;
typedef TYPE_1__ ia64_esi_desc_entry_point_t ;
typedef int efi_guid_t ;
struct TYPE_4__ {int entry_count; } ;


 char ESI_DESC_ENTRY_POINT ;
 int ESI_DESC_SIZE (char) ;
 int efi_guidcmp (int ,int ) ;
 struct ia64_sal_retval esi_call_phys (scalar_t__,int *) ;
 TYPE_2__* esi_systab ;
 int ia64_load_scratch_fpregs (struct ia64_fpreg*) ;
 int ia64_save_scratch_fpregs (struct ia64_fpreg*) ;
 int sal_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int ia64_esi_call_phys (efi_guid_t guid, struct ia64_sal_retval *isrvp,
   u64 func, u64 arg1, u64 arg2, u64 arg3, u64 arg4,
   u64 arg5, u64 arg6, u64 arg7)
{
 struct ia64_fpreg fr[6];
 unsigned long flags;
 u64 esi_params[8];
 char *p;
 int i;

 if (!esi_systab)
  return -1;

 p = (char *) (esi_systab + 1);
 for (i = 0; i < esi_systab->entry_count; i++) {
  if (*p == ESI_DESC_ENTRY_POINT) {
   ia64_esi_desc_entry_point_t *esi = (void *)p;
   if (!efi_guidcmp(guid, esi->guid)) {
    ia64_sal_handler esi_proc;
    struct pdesc pdesc;

    pdesc.addr = (void *)esi->esi_proc;
    pdesc.gp = (void *)esi->gp;

    esi_proc = (ia64_sal_handler) &pdesc;

    esi_params[0] = func;
    esi_params[1] = arg1;
    esi_params[2] = arg2;
    esi_params[3] = arg3;
    esi_params[4] = arg4;
    esi_params[5] = arg5;
    esi_params[6] = arg6;
    esi_params[7] = arg7;
    ia64_save_scratch_fpregs(fr);
    spin_lock_irqsave(&sal_lock, flags);
    *isrvp = esi_call_phys(esi_proc, esi_params);
    spin_unlock_irqrestore(&sal_lock, flags);
    ia64_load_scratch_fpregs(fr);
    return 0;
   }
  }
  p += ESI_DESC_SIZE(*p);
 }
 return -1;
}
