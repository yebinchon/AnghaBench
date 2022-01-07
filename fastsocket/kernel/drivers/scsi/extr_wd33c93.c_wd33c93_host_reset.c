
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_cmnd {int result; TYPE_1__* device; } ;
struct WD33C93_hostdata {scalar_t__ outgoing_len; scalar_t__ incoming_ptr; int dma; int state; int * disconnected_Q; int * connected; int * selecting; int * input_Q; int * sync_stat; int sx_table; int * sync_xfer; scalar_t__* busy; int (* dma_stop ) (struct Scsi_Host*,int *,int ) ;} ;
struct Scsi_Host {int irq; int host_no; scalar_t__ hostdata; } ;
struct TYPE_2__ {struct Scsi_Host* host; } ;


 int DEFAULT_SX_OFF ;
 int DEFAULT_SX_PER ;
 int DID_RESET ;
 int D_DMA_OFF ;
 int SS_UNSET ;
 int SUCCESS ;
 int S_UNCONNECTED ;
 int calc_sync_xfer (int,int ,int ,int ) ;
 int disable_irq (int ) ;
 int enable_irq (int ) ;
 int printk (char*,int ) ;
 int reset_wd33c93 (struct Scsi_Host*) ;
 int stub1 (struct Scsi_Host*,int *,int ) ;

int
wd33c93_host_reset(struct scsi_cmnd * SCpnt)
{
 struct Scsi_Host *instance;
 struct WD33C93_hostdata *hostdata;
 int i;

 instance = SCpnt->device->host;
 hostdata = (struct WD33C93_hostdata *) instance->hostdata;

 printk("scsi%d: reset. ", instance->host_no);
 disable_irq(instance->irq);

 hostdata->dma_stop(instance, ((void*)0), 0);
 for (i = 0; i < 8; i++) {
  hostdata->busy[i] = 0;
  hostdata->sync_xfer[i] =
   calc_sync_xfer(DEFAULT_SX_PER / 4, DEFAULT_SX_OFF,
     0, hostdata->sx_table);
  hostdata->sync_stat[i] = SS_UNSET;
 }
 hostdata->input_Q = ((void*)0);
 hostdata->selecting = ((void*)0);
 hostdata->connected = ((void*)0);
 hostdata->disconnected_Q = ((void*)0);
 hostdata->state = S_UNCONNECTED;
 hostdata->dma = D_DMA_OFF;
 hostdata->incoming_ptr = 0;
 hostdata->outgoing_len = 0;

 reset_wd33c93(instance);
 SCpnt->result = DID_RESET << 16;
 enable_irq(instance->irq);
 return SUCCESS;
}
