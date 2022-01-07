
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int wwn_t ;
typedef int u32 ;
struct bfad_s {int dummy; } ;
struct bfad_port_s {TYPE_2__* im_port; } ;
struct bfad_itnim_s {scalar_t__ state; int queue_work; int itnim_work; int fcs_itnim; TYPE_2__* im_port; struct bfad_im_s* im; } ;
struct bfad_im_s {int drv_workq; } ;
struct TYPE_4__ {TYPE_1__* shost; } ;
struct TYPE_3__ {int host_no; } ;


 int BFA_LOG (int ,struct bfad_s*,int ,char*,int ,char*,char*) ;
 scalar_t__ ITNIM_STATE_FREE ;
 scalar_t__ ITNIM_STATE_OFFLINE_PENDING ;
 scalar_t__ ITNIM_STATE_ONLINE ;
 int KERN_INFO ;
 int WARN_ON (int) ;
 struct bfad_port_s* bfa_fcs_itnim_get_drvport (int *) ;
 int bfa_fcs_itnim_get_fcid (int *) ;
 int bfa_fcs_itnim_get_pwwn (int *) ;
 int bfa_log_level ;
 int fcid2str (char*,int ) ;
 int queue_work (int ,int *) ;
 int wwn2str (char*,int ) ;

void
bfa_fcb_itnim_free(struct bfad_s *bfad, struct bfad_itnim_s *itnim_drv)
{
 struct bfad_port_s *port;
 wwn_t wwpn;
 u32 fcid;
 char wwpn_str[32], fcid_str[16];
 struct bfad_im_s *im = itnim_drv->im;


 WARN_ON(itnim_drv->state == ITNIM_STATE_ONLINE);

 itnim_drv->queue_work = 1;

 if (itnim_drv->state == ITNIM_STATE_OFFLINE_PENDING)
  itnim_drv->queue_work = 0;

 itnim_drv->state = ITNIM_STATE_FREE;
 port = bfa_fcs_itnim_get_drvport(&itnim_drv->fcs_itnim);
 itnim_drv->im_port = port->im_port;
 wwpn = bfa_fcs_itnim_get_pwwn(&itnim_drv->fcs_itnim);
 fcid = bfa_fcs_itnim_get_fcid(&itnim_drv->fcs_itnim);
 wwn2str(wwpn_str, wwpn);
 fcid2str(fcid_str, fcid);
 BFA_LOG(KERN_INFO, bfad, bfa_log_level,
  "ITNIM FREE scsi%d: FCID: %s WWPN: %s\n",
  port->im_port->shost->host_no,
  fcid_str, wwpn_str);


 if (itnim_drv->queue_work)
  queue_work(im->drv_workq, &itnim_drv->itnim_work);
}
