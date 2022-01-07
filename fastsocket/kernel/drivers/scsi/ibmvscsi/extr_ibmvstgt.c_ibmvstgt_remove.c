
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vio_port {int dummy; } ;
struct vio_dev {int dev; } ;
struct srp_target {struct vio_port* ldata; struct Scsi_Host* shost; } ;
struct Scsi_Host {int dummy; } ;


 int crq_queue_destroy (struct srp_target*) ;
 struct srp_target* dev_get_drvdata (int *) ;
 int kfree (struct vio_port*) ;
 int scsi_host_put (struct Scsi_Host*) ;
 int scsi_remove_host (struct Scsi_Host*) ;
 int scsi_tgt_free_queue (struct Scsi_Host*) ;
 int srp_remove_host (struct Scsi_Host*) ;
 int srp_target_free (struct srp_target*) ;

__attribute__((used)) static int ibmvstgt_remove(struct vio_dev *dev)
{
 struct srp_target *target = dev_get_drvdata(&dev->dev);
 struct Scsi_Host *shost = target->shost;
 struct vio_port *vport = target->ldata;

 crq_queue_destroy(target);
 srp_remove_host(shost);
 scsi_remove_host(shost);
 scsi_tgt_free_queue(shost);
 srp_target_free(target);
 kfree(vport);
 scsi_host_put(shost);
 return 0;
}
