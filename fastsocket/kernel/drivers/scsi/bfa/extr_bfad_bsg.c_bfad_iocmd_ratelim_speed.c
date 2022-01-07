
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfad_s {int bfad_lock; int bfa; } ;
struct TYPE_2__ {scalar_t__ topology; scalar_t__ trl_def_speed; } ;
struct bfa_fcport_s {scalar_t__ speed_sup; scalar_t__ topology; TYPE_1__ cfg; } ;
struct bfa_bsg_trl_speed_s {scalar_t__ speed; int status; } ;


 struct bfa_fcport_s* BFA_FCPORT_MOD (int *) ;
 scalar_t__ BFA_PORT_SPEED_AUTO ;
 scalar_t__ BFA_PORT_TOPOLOGY_LOOP ;
 int BFA_STATUS_OK ;
 int BFA_STATUS_TOPOLOGY_LOOP ;
 int BFA_STATUS_UNSUPP_SPEED ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int
bfad_iocmd_ratelim_speed(struct bfad_s *bfad, unsigned int cmd, void *pcmd)
{
 struct bfa_bsg_trl_speed_s *iocmd = (struct bfa_bsg_trl_speed_s *)pcmd;
 struct bfa_fcport_s *fcport = BFA_FCPORT_MOD(&bfad->bfa);
 unsigned long flags;

 spin_lock_irqsave(&bfad->bfad_lock, flags);


 if ((iocmd->speed == BFA_PORT_SPEED_AUTO) ||
     (iocmd->speed > fcport->speed_sup)) {
  iocmd->status = BFA_STATUS_UNSUPP_SPEED;
  spin_unlock_irqrestore(&bfad->bfad_lock, flags);
  return 0;
 }

 if ((fcport->cfg.topology == BFA_PORT_TOPOLOGY_LOOP) &&
  (fcport->topology == BFA_PORT_TOPOLOGY_LOOP))
  iocmd->status = BFA_STATUS_TOPOLOGY_LOOP;
 else {
  fcport->cfg.trl_def_speed = iocmd->speed;
  iocmd->status = BFA_STATUS_OK;
 }
 spin_unlock_irqrestore(&bfad->bfad_lock, flags);

 return 0;
}
