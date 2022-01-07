
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfad_s {int bfad_lock; int bfa; } ;
struct TYPE_2__ {scalar_t__ topology; scalar_t__ trl_def_speed; int ratelimit; } ;
struct bfa_fcport_s {scalar_t__ topology; TYPE_1__ cfg; } ;
struct bfa_bsg_gen_s {int status; } ;


 int BFA_FALSE ;
 struct bfa_fcport_s* BFA_FCPORT_MOD (int *) ;
 scalar_t__ BFA_PORT_SPEED_1GBPS ;
 scalar_t__ BFA_PORT_SPEED_UNKNOWN ;
 scalar_t__ BFA_PORT_TOPOLOGY_LOOP ;
 int BFA_STATUS_OK ;
 int BFA_STATUS_TOPOLOGY_LOOP ;
 int BFA_TRUE ;
 unsigned int IOCMD_RATELIM_DISABLE ;
 unsigned int IOCMD_RATELIM_ENABLE ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int
bfad_iocmd_ratelim(struct bfad_s *bfad, unsigned int cmd, void *pcmd)
{
 struct bfa_bsg_gen_s *iocmd = (struct bfa_bsg_gen_s *)pcmd;
 struct bfa_fcport_s *fcport = BFA_FCPORT_MOD(&bfad->bfa);
 unsigned long flags;

 spin_lock_irqsave(&bfad->bfad_lock, flags);

 if ((fcport->cfg.topology == BFA_PORT_TOPOLOGY_LOOP) &&
  (fcport->topology == BFA_PORT_TOPOLOGY_LOOP))
  iocmd->status = BFA_STATUS_TOPOLOGY_LOOP;
 else {
  if (cmd == IOCMD_RATELIM_ENABLE)
   fcport->cfg.ratelimit = BFA_TRUE;
  else if (cmd == IOCMD_RATELIM_DISABLE)
   fcport->cfg.ratelimit = BFA_FALSE;

  if (fcport->cfg.trl_def_speed == BFA_PORT_SPEED_UNKNOWN)
   fcport->cfg.trl_def_speed = BFA_PORT_SPEED_1GBPS;

  iocmd->status = BFA_STATUS_OK;
 }

 spin_unlock_irqrestore(&bfad->bfad_lock, flags);

 return 0;
}
