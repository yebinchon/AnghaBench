
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int this_residual; int dma_handle; int * ptr; } ;
struct scsi_cmnd {TYPE_3__ SCp; TYPE_2__* device; } ;
struct TYPE_8__ {scalar_t__ dma_dir; } ;
struct ip22_hostdata {TYPE_4__ wh; int dev; } ;
struct hpc3_scsiregs {int ctrl; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_6__ {TYPE_1__* host; } ;
struct TYPE_5__ {scalar_t__ base; } ;


 int DMA_DIR (scalar_t__) ;
 int HPC3_SCTRL_ACTIVE ;
 int HPC3_SCTRL_FLUSH ;
 int barrier () ;
 int dma_unmap_single (int ,int ,int ,int ) ;
 struct ip22_hostdata* host_to_hostdata (struct Scsi_Host*) ;
 int pr_debug (char*,...) ;

__attribute__((used)) static void dma_stop(struct Scsi_Host *instance, struct scsi_cmnd *SCpnt,
       int status)
{
 struct ip22_hostdata *hdata = host_to_hostdata(instance);
 struct hpc3_scsiregs *hregs;

 if (!SCpnt)
  return;

 if (SCpnt->SCp.ptr == ((void*)0) || SCpnt->SCp.this_residual == 0)
  return;

 hregs = (struct hpc3_scsiregs *) SCpnt->device->host->base;

 pr_debug("dma_stop: status<%d> ", status);


 if (hdata->wh.dma_dir) {
  hregs->ctrl |= HPC3_SCTRL_FLUSH;
  while (hregs->ctrl & HPC3_SCTRL_ACTIVE)
   barrier();
 }
 hregs->ctrl = 0;
 dma_unmap_single(hdata->dev, SCpnt->SCp.dma_handle,
    SCpnt->SCp.this_residual,
    DMA_DIR(hdata->wh.dma_dir));

 pr_debug("\n");
}
