
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int vm_flags; int vm_parm; int vm_parm_len; int load_parm; } ;
struct TYPE_10__ {TYPE_2__ ccw; } ;
struct TYPE_8__ {int flags; } ;
struct ipl_parameter_block {TYPE_3__ ipl_info; TYPE_1__ hdr; } ;
struct TYPE_11__ {int vm_flags; int * vm_parm; int vm_parm_len; } ;
struct TYPE_12__ {TYPE_4__ ccw; } ;
struct TYPE_14__ {TYPE_5__ ipl_info; } ;
struct TYPE_13__ {int loadparm; scalar_t__ is_valid; } ;


 int DIAG308_FLAGS_LP_VALID ;
 int DIAG308_VMPARM_SIZE ;
 int DIAG308_VM_FLAGS_VP_VALID ;
 int LOADPARM_LEN ;
 scalar_t__ MACHINE_IS_VM ;
 scalar_t__ diag308_set_works ;
 TYPE_7__ ipl_block ;
 int memcpy (int ,int *,int ) ;
 int memset (int ,int,int ) ;
 TYPE_6__ sclp_ipl_info ;

__attribute__((used)) static void reipl_block_ccw_fill_parms(struct ipl_parameter_block *ipb)
{


 if (sclp_ipl_info.is_valid)
  memcpy(ipb->ipl_info.ccw.load_parm,
    &sclp_ipl_info.loadparm, LOADPARM_LEN);
 else

  memset(ipb->ipl_info.ccw.load_parm, 0x40, LOADPARM_LEN);
 ipb->hdr.flags = DIAG308_FLAGS_LP_VALID;


 if (MACHINE_IS_VM && diag308_set_works &&
     (ipl_block.ipl_info.ccw.vm_flags & DIAG308_VM_FLAGS_VP_VALID)) {

  ipb->ipl_info.ccw.vm_flags |= DIAG308_VM_FLAGS_VP_VALID;
  ipb->ipl_info.ccw.vm_parm_len =
     ipl_block.ipl_info.ccw.vm_parm_len;
  memcpy(ipb->ipl_info.ccw.vm_parm,
         ipl_block.ipl_info.ccw.vm_parm, DIAG308_VMPARM_SIZE);
 }
}
