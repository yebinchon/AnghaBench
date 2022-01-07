
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct pt_regs {int dummy; } ;
struct TYPE_5__ {int reset_ovfl_pmds; scalar_t__ mask_monitoring; } ;
struct TYPE_6__ {TYPE_1__ bits; } ;
typedef TYPE_2__ pfm_ovfl_ctrl_t ;
struct TYPE_7__ {unsigned long hdr_count; int hdr_cur_offs; } ;
typedef TYPE_3__ pfm_default_smpl_hdr_t ;



__attribute__((used)) static int
default_restart(struct task_struct *task, pfm_ovfl_ctrl_t *ctrl, void *buf, struct pt_regs *regs)
{
 pfm_default_smpl_hdr_t *hdr;

 hdr = (pfm_default_smpl_hdr_t *)buf;

 hdr->hdr_count = 0UL;
 hdr->hdr_cur_offs = sizeof(*hdr);

 ctrl->bits.mask_monitoring = 0;
 ctrl->bits.reset_ovfl_pmds = 1;

 return 0;
}
