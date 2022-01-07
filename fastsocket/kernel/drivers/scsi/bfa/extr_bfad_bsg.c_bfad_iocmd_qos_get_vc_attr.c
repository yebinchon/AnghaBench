
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u32 ;
struct bfad_s {int bfad_lock; int bfa; } ;
struct bfa_qos_vc_attr_s {TYPE_3__* vc_info; int elp_opmode_flags; int shared_credit; int total_vc_count; } ;
struct bfa_fcport_s {struct bfa_qos_vc_attr_s qos_vc_attr; } ;
struct TYPE_5__ {size_t total_vc_count; TYPE_1__* vc_info; int elp_opmode_flags; void* shared_credit; } ;
struct bfa_bsg_qos_vc_attr_s {int status; TYPE_2__ attr; } ;
struct TYPE_6__ {int priority; int borrow_credit; int vc_credit; } ;
struct TYPE_4__ {int priority; int borrow_credit; int vc_credit; } ;


 struct bfa_fcport_s* BFA_FCPORT_MOD (int *) ;
 int BFA_STATUS_OK ;
 void* be16_to_cpu (int ) ;
 int be32_to_cpu (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int
bfad_iocmd_qos_get_vc_attr(struct bfad_s *bfad, void *cmd)
{
 struct bfa_bsg_qos_vc_attr_s *iocmd =
    (struct bfa_bsg_qos_vc_attr_s *)cmd;
 struct bfa_fcport_s *fcport = BFA_FCPORT_MOD(&bfad->bfa);
 struct bfa_qos_vc_attr_s *bfa_vc_attr = &fcport->qos_vc_attr;
 unsigned long flags;
 u32 i = 0;

 spin_lock_irqsave(&bfad->bfad_lock, flags);
 iocmd->attr.total_vc_count = be16_to_cpu(bfa_vc_attr->total_vc_count);
 iocmd->attr.shared_credit = be16_to_cpu(bfa_vc_attr->shared_credit);
 iocmd->attr.elp_opmode_flags =
    be32_to_cpu(bfa_vc_attr->elp_opmode_flags);


 while (i < iocmd->attr.total_vc_count) {
  iocmd->attr.vc_info[i].vc_credit =
    bfa_vc_attr->vc_info[i].vc_credit;
  iocmd->attr.vc_info[i].borrow_credit =
    bfa_vc_attr->vc_info[i].borrow_credit;
  iocmd->attr.vc_info[i].priority =
    bfa_vc_attr->vc_info[i].priority;
  i++;
 }
 spin_unlock_irqrestore(&bfad->bfad_lock, flags);

 iocmd->status = BFA_STATUS_OK;
 return 0;
}
