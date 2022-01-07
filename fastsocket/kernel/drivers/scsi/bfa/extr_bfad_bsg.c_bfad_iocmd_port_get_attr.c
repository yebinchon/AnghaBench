
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int bport; } ;
struct TYPE_8__ {TYPE_1__ fabric; } ;
struct bfad_s {int bfad_lock; TYPE_2__ bfa_fcs; int bfa; } ;
struct TYPE_10__ {int symname; } ;
struct TYPE_11__ {TYPE_4__ sym_name; } ;
struct bfa_lport_attr_s {TYPE_5__ port_cfg; int authfail; int loopback; int port_type; scalar_t__ pid; } ;
struct TYPE_9__ {int symname; } ;
struct TYPE_12__ {scalar_t__ topology; TYPE_3__ port_symname; int authfail; int loopback; int port_type; scalar_t__ pid; } ;
struct bfa_bsg_port_attr_s {int status; TYPE_6__ attr; } ;


 scalar_t__ BFA_PORT_TOPOLOGY_NONE ;
 int BFA_STATUS_OK ;
 int bfa_fcport_get_attr (int *,TYPE_6__*) ;
 int bfa_fcs_lport_get_attr (int *,struct bfa_lport_attr_s*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int strncpy (int ,int ,int) ;

__attribute__((used)) static int
bfad_iocmd_port_get_attr(struct bfad_s *bfad, void *cmd)
{
 struct bfa_bsg_port_attr_s *iocmd = (struct bfa_bsg_port_attr_s *)cmd;
 struct bfa_lport_attr_s port_attr;
 unsigned long flags;

 spin_lock_irqsave(&bfad->bfad_lock, flags);
 bfa_fcport_get_attr(&bfad->bfa, &iocmd->attr);
 bfa_fcs_lport_get_attr(&bfad->bfa_fcs.fabric.bport, &port_attr);
 spin_unlock_irqrestore(&bfad->bfad_lock, flags);

 if (iocmd->attr.topology != BFA_PORT_TOPOLOGY_NONE)
  iocmd->attr.pid = port_attr.pid;
 else
  iocmd->attr.pid = 0;

 iocmd->attr.port_type = port_attr.port_type;
 iocmd->attr.loopback = port_attr.loopback;
 iocmd->attr.authfail = port_attr.authfail;
 strncpy(iocmd->attr.port_symname.symname,
  port_attr.port_cfg.sym_name.symname,
  sizeof(port_attr.port_cfg.sym_name.symname));

 iocmd->status = BFA_STATUS_OK;
 return 0;
}
