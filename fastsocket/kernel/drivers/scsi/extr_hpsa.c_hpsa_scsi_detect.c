
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ctlr_info {size_t intr_mode; int ctlr; TYPE_1__* pdev; int * intr; struct Scsi_Host* scsi_host; int maxsgentries; int nr_cmds; } ;
struct Scsi_Host {int this_id; int max_channel; unsigned long* hostdata; int irq; int unique_id; int sg_tablesize; int cmd_per_lun; int can_queue; void* max_id; void* max_lun; int max_cmd_len; scalar_t__ n_io_port; scalar_t__ io_port; } ;
typedef int h ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 void* HPSA_MAX_LUN ;
 int MAX_COMMAND_SIZE ;
 int dev_err (int *,char*,int ) ;
 int hpsa_driver_template ;
 int scsi_add_host (struct Scsi_Host*,int *) ;
 struct Scsi_Host* scsi_host_alloc (int *,int) ;
 int scsi_host_put (struct Scsi_Host*) ;
 int scsi_scan_host (struct Scsi_Host*) ;

__attribute__((used)) static int hpsa_scsi_detect(struct ctlr_info *h)
{
 struct Scsi_Host *sh;
 int error;

 sh = scsi_host_alloc(&hpsa_driver_template, sizeof(h));
 if (sh == ((void*)0))
  goto fail;

 sh->io_port = 0;
 sh->n_io_port = 0;
 sh->this_id = -1;
 sh->max_channel = 3;
 sh->max_cmd_len = MAX_COMMAND_SIZE;
 sh->max_lun = HPSA_MAX_LUN;
 sh->max_id = HPSA_MAX_LUN;
 sh->can_queue = h->nr_cmds;
 sh->cmd_per_lun = h->nr_cmds;
 sh->sg_tablesize = h->maxsgentries;
 h->scsi_host = sh;
 sh->hostdata[0] = (unsigned long) h;
 sh->irq = h->intr[h->intr_mode];
 sh->unique_id = sh->irq;
 error = scsi_add_host(sh, &h->pdev->dev);
 if (error)
  goto fail_host_put;
 scsi_scan_host(sh);
 return 0;

 fail_host_put:
 dev_err(&h->pdev->dev, "hpsa_scsi_detect: scsi_add_host"
  " failed for controller %d\n", h->ctlr);
 scsi_host_put(sh);
 return error;
 fail:
 dev_err(&h->pdev->dev, "hpsa_scsi_detect: scsi_host_alloc"
  " failed for controller %d\n", h->ctlr);
 return -ENOMEM;
}
