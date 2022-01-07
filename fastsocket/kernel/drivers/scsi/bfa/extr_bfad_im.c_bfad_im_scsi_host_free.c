
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct bfad_s {int inst_no; } ;
struct bfad_im_port_s {int idr_id; TYPE_1__* shost; } ;
struct TYPE_4__ {int host_no; } ;


 int BFA_LOG (int ,struct bfad_s*,int ,char*,int ) ;
 int KERN_INFO ;
 int bfa_log_level ;
 int bfa_trc (struct bfad_s*,int ) ;
 int bfad_im_port_index ;
 int bfad_mutex ;
 int fc_remove_host (TYPE_1__*) ;
 int idr_remove (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int scsi_host_put (TYPE_1__*) ;
 int scsi_remove_host (TYPE_1__*) ;

void
bfad_im_scsi_host_free(struct bfad_s *bfad, struct bfad_im_port_s *im_port)
{
 bfa_trc(bfad, bfad->inst_no);
 BFA_LOG(KERN_INFO, bfad, bfa_log_level, "Free scsi%d\n",
   im_port->shost->host_no);

 fc_remove_host(im_port->shost);

 scsi_remove_host(im_port->shost);
 scsi_host_put(im_port->shost);

 mutex_lock(&bfad_mutex);
 idr_remove(&bfad_im_port_index, im_port->idr_id);
 mutex_unlock(&bfad_mutex);
}
