
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int wwn_t ;
typedef int u8 ;
struct fc_vport {scalar_t__ dd_data; } ;
struct completion {int dummy; } ;
struct TYPE_4__ {int flags; TYPE_1__* im_port; } ;
struct bfad_vport_s {struct completion* comp_del; TYPE_2__ drv_port; int fcs_vport; int list_entry; } ;
struct bfad_s {int bfad_lock; int bfa_fcs; } ;
struct bfad_port_s {int dummy; } ;
struct bfad_im_port_s {int flags; struct bfad_port_s* port; struct bfad_s* bfad; } ;
struct bfa_fcs_vport_s {int dummy; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_3__ {struct Scsi_Host* shost; } ;


 int BFAD_PORT_DELETE ;
 int BFA_STATUS_PBC ;
 int VPCERR_BAD_WWN ;
 int bfa_fcs_vport_delete (int *) ;
 struct bfa_fcs_vport_s* bfa_fcs_vport_lookup (int *,int ,int ) ;
 int bfad_scsi_host_free (struct bfad_s*,struct bfad_im_port_s*) ;
 int fc_host_port_name (struct Scsi_Host*) ;
 int init_completion (struct completion*) ;
 int kfree (struct bfad_vport_s*) ;
 int list_del (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int u64_to_wwn (int ,int *) ;
 int wait_for_completion (struct completion*) ;

__attribute__((used)) static int
bfad_im_vport_delete(struct fc_vport *fc_vport)
{
 struct bfad_vport_s *vport = (struct bfad_vport_s *)fc_vport->dd_data;
 struct bfad_im_port_s *im_port =
   (struct bfad_im_port_s *) vport->drv_port.im_port;
 struct bfad_s *bfad = im_port->bfad;
 struct bfad_port_s *port;
 struct bfa_fcs_vport_s *fcs_vport;
 struct Scsi_Host *vshost;
 wwn_t pwwn;
 int rc;
 unsigned long flags;
 struct completion fcomp;

 if (im_port->flags & BFAD_PORT_DELETE) {
  bfad_scsi_host_free(bfad, im_port);
  list_del(&vport->list_entry);
  kfree(vport);
  return 0;
 }

 port = im_port->port;

 vshost = vport->drv_port.im_port->shost;
 u64_to_wwn(fc_host_port_name(vshost), (u8 *)&pwwn);

 spin_lock_irqsave(&bfad->bfad_lock, flags);
 fcs_vport = bfa_fcs_vport_lookup(&bfad->bfa_fcs, 0, pwwn);
 spin_unlock_irqrestore(&bfad->bfad_lock, flags);

 if (fcs_vport == ((void*)0))
  return VPCERR_BAD_WWN;

 vport->drv_port.flags |= BFAD_PORT_DELETE;

 vport->comp_del = &fcomp;
 init_completion(vport->comp_del);

 spin_lock_irqsave(&bfad->bfad_lock, flags);
 rc = bfa_fcs_vport_delete(&vport->fcs_vport);
 spin_unlock_irqrestore(&bfad->bfad_lock, flags);

 if (rc == BFA_STATUS_PBC) {
  vport->drv_port.flags &= ~BFAD_PORT_DELETE;
  vport->comp_del = ((void*)0);
  return -1;
 }

 wait_for_completion(vport->comp_del);

 bfad_scsi_host_free(bfad, im_port);

 kfree(vport);

 return 0;
}
