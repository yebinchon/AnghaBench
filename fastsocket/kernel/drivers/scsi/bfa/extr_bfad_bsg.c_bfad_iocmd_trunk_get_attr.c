
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bfad_s {int bfad_lock; int bfa; } ;
struct bfa_trunk_attr_s {int dummy; } ;
struct bfa_fcport_trunk_s {int attr; } ;
struct TYPE_3__ {scalar_t__ topology; } ;
struct bfa_fcport_s {scalar_t__ topology; TYPE_1__ cfg; struct bfa_fcport_trunk_s trunk; } ;
struct TYPE_4__ {int port_id; } ;
struct bfa_bsg_trunk_attr_s {int status; TYPE_2__ attr; } ;


 struct bfa_fcport_s* BFA_FCPORT_MOD (int *) ;
 scalar_t__ BFA_PORT_TOPOLOGY_LOOP ;
 int BFA_STATUS_OK ;
 int BFA_STATUS_TOPOLOGY_LOOP ;
 int bfa_lps_get_base_pid (int *) ;
 int memcpy (void*,void*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int
bfad_iocmd_trunk_get_attr(struct bfad_s *bfad, void *cmd)
{
 struct bfa_bsg_trunk_attr_s *iocmd = (struct bfa_bsg_trunk_attr_s *)cmd;
 struct bfa_fcport_s *fcport = BFA_FCPORT_MOD(&bfad->bfa);
 struct bfa_fcport_trunk_s *trunk = &fcport->trunk;
 unsigned long flags;

 spin_lock_irqsave(&bfad->bfad_lock, flags);
 if ((fcport->cfg.topology == BFA_PORT_TOPOLOGY_LOOP) ||
  (fcport->topology == BFA_PORT_TOPOLOGY_LOOP))
  iocmd->status = BFA_STATUS_TOPOLOGY_LOOP;
 else {
  memcpy((void *)&iocmd->attr, (void *)&trunk->attr,
   sizeof(struct bfa_trunk_attr_s));
  iocmd->attr.port_id = bfa_lps_get_base_pid(&bfad->bfa);
  iocmd->status = BFA_STATUS_OK;
 }
 spin_unlock_irqrestore(&bfad->bfad_lock, flags);

 return 0;
}
