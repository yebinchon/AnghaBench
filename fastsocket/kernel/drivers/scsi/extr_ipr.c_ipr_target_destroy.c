
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_target {scalar_t__ channel; struct ipr_sata_port* hostdata; int id; int dev; } ;
struct ipr_sata_port {int ap; } ;
struct ipr_ioa_cfg {int target_ids; int vset_ids; int array_ids; scalar_t__ sis64; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;


 scalar_t__ IPR_ARRAY_VIRTUAL_BUS ;
 scalar_t__ IPR_VSET_VIRTUAL_BUS ;
 int ata_sas_port_destroy (int ) ;
 int clear_bit (int ,int ) ;
 struct Scsi_Host* dev_to_shost (int *) ;
 int ipr_find_starget (struct scsi_target*) ;
 int kfree (struct ipr_sata_port*) ;

__attribute__((used)) static void ipr_target_destroy(struct scsi_target *starget)
{
 struct ipr_sata_port *sata_port = starget->hostdata;
 struct Scsi_Host *shost = dev_to_shost(&starget->dev);
 struct ipr_ioa_cfg *ioa_cfg = (struct ipr_ioa_cfg *) shost->hostdata;

 if (ioa_cfg->sis64) {
  if (!ipr_find_starget(starget)) {
   if (starget->channel == IPR_ARRAY_VIRTUAL_BUS)
    clear_bit(starget->id, ioa_cfg->array_ids);
   else if (starget->channel == IPR_VSET_VIRTUAL_BUS)
    clear_bit(starget->id, ioa_cfg->vset_ids);
   else if (starget->channel == 0)
    clear_bit(starget->id, ioa_cfg->target_ids);
  }
 }

 if (sata_port) {
  starget->hostdata = ((void*)0);
  ata_sas_port_destroy(sata_port->ap);
  kfree(sata_port);
 }
}
