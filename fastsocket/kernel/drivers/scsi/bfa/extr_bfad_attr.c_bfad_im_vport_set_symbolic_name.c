
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int wwn_t ;
typedef int u8 ;
struct fc_vport {char* symbolic_name; scalar_t__ dd_data; } ;
struct TYPE_7__ {TYPE_1__* im_port; } ;
struct bfad_vport_s {TYPE_2__ drv_port; } ;
struct bfad_s {int bfad_lock; int bfa_fcs; } ;
struct bfad_im_port_s {struct bfad_s* bfad; } ;
struct TYPE_8__ {int symname; } ;
struct TYPE_9__ {TYPE_3__ sym_name; } ;
struct TYPE_10__ {TYPE_4__ port_cfg; } ;
struct bfa_fcs_vport_s {TYPE_5__ lport; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_6__ {struct Scsi_Host* shost; } ;


 int BFA_FCS_GET_NS_FROM_PORT (TYPE_5__*) ;
 int bfa_fcs_lport_ns_util_send_rspn_id (int ,int *) ;
 struct bfa_fcs_vport_s* bfa_fcs_vport_lookup (int *,int ,int ) ;
 int fc_host_port_name (struct Scsi_Host*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int strcpy (int ,char*) ;
 scalar_t__ strlen (char*) ;
 int u64_to_wwn (int ,int *) ;

void
bfad_im_vport_set_symbolic_name(struct fc_vport *fc_vport)
{
 struct bfad_vport_s *vport = (struct bfad_vport_s *)fc_vport->dd_data;
 struct bfad_im_port_s *im_port =
   (struct bfad_im_port_s *)vport->drv_port.im_port;
 struct bfad_s *bfad = im_port->bfad;
 struct Scsi_Host *vshost = vport->drv_port.im_port->shost;
 char *sym_name = fc_vport->symbolic_name;
 struct bfa_fcs_vport_s *fcs_vport;
 wwn_t pwwn;
 unsigned long flags;

 u64_to_wwn(fc_host_port_name(vshost), (u8 *)&pwwn);

 spin_lock_irqsave(&bfad->bfad_lock, flags);
 fcs_vport = bfa_fcs_vport_lookup(&bfad->bfa_fcs, 0, pwwn);
 spin_unlock_irqrestore(&bfad->bfad_lock, flags);

 if (fcs_vport == ((void*)0))
  return;

 spin_lock_irqsave(&bfad->bfad_lock, flags);
 if (strlen(sym_name) > 0) {
  strcpy(fcs_vport->lport.port_cfg.sym_name.symname, sym_name);
  bfa_fcs_lport_ns_util_send_rspn_id(
   BFA_FCS_GET_NS_FROM_PORT((&fcs_vport->lport)), ((void*)0));
 }
 spin_unlock_irqrestore(&bfad->bfad_lock, flags);
}
