
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int wwn_t ;
typedef int u8 ;
struct fc_vport {scalar_t__ dd_data; } ;
struct TYPE_4__ {TYPE_1__* im_port; struct bfad_s* bfad; } ;
struct bfad_vport_s {TYPE_2__ drv_port; } ;
struct bfad_s {int bfad_lock; int bfa_fcs; } ;
struct bfa_fcs_vport_s {int dummy; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_3__ {struct Scsi_Host* shost; } ;


 int FC_VPORT_ACTIVE ;
 int FC_VPORT_DISABLED ;
 int VPCERR_BAD_WWN ;
 struct bfa_fcs_vport_s* bfa_fcs_vport_lookup (int *,int ,int ) ;
 int bfa_fcs_vport_start (struct bfa_fcs_vport_s*) ;
 int bfa_fcs_vport_stop (struct bfa_fcs_vport_s*) ;
 int fc_host_port_name (struct Scsi_Host*) ;
 int fc_vport_set_state (struct fc_vport*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int u64_to_wwn (int ,int *) ;

__attribute__((used)) static int
bfad_im_vport_disable(struct fc_vport *fc_vport, bool disable)
{
 struct bfad_vport_s *vport;
 struct bfad_s *bfad;
 struct bfa_fcs_vport_s *fcs_vport;
 struct Scsi_Host *vshost;
 wwn_t pwwn;
 unsigned long flags;

 vport = (struct bfad_vport_s *)fc_vport->dd_data;
 bfad = vport->drv_port.bfad;
 vshost = vport->drv_port.im_port->shost;
 u64_to_wwn(fc_host_port_name(vshost), (u8 *)&pwwn);

 spin_lock_irqsave(&bfad->bfad_lock, flags);
 fcs_vport = bfa_fcs_vport_lookup(&bfad->bfa_fcs, 0, pwwn);
 spin_unlock_irqrestore(&bfad->bfad_lock, flags);

 if (fcs_vport == ((void*)0))
  return VPCERR_BAD_WWN;

 if (disable) {
  bfa_fcs_vport_stop(fcs_vport);
  fc_vport_set_state(fc_vport, FC_VPORT_DISABLED);
 } else {
  bfa_fcs_vport_start(fcs_vport);
  fc_vport_set_state(fc_vport, FC_VPORT_ACTIVE);
 }

 return 0;
}
