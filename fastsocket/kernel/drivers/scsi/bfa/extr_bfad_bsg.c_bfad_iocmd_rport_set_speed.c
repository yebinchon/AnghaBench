
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfad_s {int bfad_lock; int bfa_fcs; } ;
struct TYPE_2__ {scalar_t__ rpsc_speed; int assigned_speed; } ;
struct bfa_fcs_rport_s {scalar_t__ bfa_rport; TYPE_1__ rpf; } ;
struct bfa_fcs_lport_s {int dummy; } ;
struct bfa_bsg_rport_set_speed_s {int status; int speed; int rpwwn; int pwwn; int vf_id; } ;


 scalar_t__ BFA_PORT_SPEED_UNKNOWN ;
 int BFA_STATUS_OK ;
 int BFA_STATUS_UNKNOWN_LWWN ;
 int BFA_STATUS_UNKNOWN_RWWN ;
 struct bfa_fcs_lport_s* bfa_fcs_lookup_port (int *,int ,int ) ;
 struct bfa_fcs_rport_s* bfa_fcs_rport_lookup (struct bfa_fcs_lport_s*,int ) ;
 int bfa_rport_speed (scalar_t__,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int
bfad_iocmd_rport_set_speed(struct bfad_s *bfad, void *cmd)
{
 struct bfa_bsg_rport_set_speed_s *iocmd =
    (struct bfa_bsg_rport_set_speed_s *)cmd;
 struct bfa_fcs_lport_s *fcs_port;
 struct bfa_fcs_rport_s *fcs_rport;
 unsigned long flags;

 spin_lock_irqsave(&bfad->bfad_lock, flags);
 fcs_port = bfa_fcs_lookup_port(&bfad->bfa_fcs,
    iocmd->vf_id, iocmd->pwwn);
 if (fcs_port == ((void*)0)) {
  spin_unlock_irqrestore(&bfad->bfad_lock, flags);
  iocmd->status = BFA_STATUS_UNKNOWN_LWWN;
  goto out;
 }

 fcs_rport = bfa_fcs_rport_lookup(fcs_port, iocmd->rpwwn);
 if (fcs_rport == ((void*)0)) {
  spin_unlock_irqrestore(&bfad->bfad_lock, flags);
  iocmd->status = BFA_STATUS_UNKNOWN_RWWN;
  goto out;
 }

 fcs_rport->rpf.assigned_speed = iocmd->speed;

 if (fcs_rport->rpf.rpsc_speed == BFA_PORT_SPEED_UNKNOWN)
  if (fcs_rport->bfa_rport)
   bfa_rport_speed(fcs_rport->bfa_rport, iocmd->speed);
 spin_unlock_irqrestore(&bfad->bfad_lock, flags);
 iocmd->status = BFA_STATUS_OK;
out:
 return 0;
}
