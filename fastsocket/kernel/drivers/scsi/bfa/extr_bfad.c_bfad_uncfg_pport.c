
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int roles; int im_port; } ;
struct bfad_s {int bfad_flags; TYPE_1__ pport; } ;


 int BFAD_CFG_PPORT_DONE ;
 int BFA_LPORT_ROLE_FCP_IM ;
 int bfad_im_port_clean (int ) ;
 int bfad_im_scsi_host_free (struct bfad_s*,int ) ;
 int kfree (int ) ;
 int supported_fc4s ;

void
bfad_uncfg_pport(struct bfad_s *bfad)
{
 if ((supported_fc4s & BFA_LPORT_ROLE_FCP_IM) &&
     (bfad->pport.roles & BFA_LPORT_ROLE_FCP_IM)) {
  bfad_im_scsi_host_free(bfad, bfad->pport.im_port);
  bfad_im_port_clean(bfad->pport.im_port);
  kfree(bfad->pport.im_port);
  bfad->pport.roles &= ~BFA_LPORT_ROLE_FCP_IM;
 }

 bfad->bfad_flags &= ~BFAD_CFG_PPORT_DONE;
}
