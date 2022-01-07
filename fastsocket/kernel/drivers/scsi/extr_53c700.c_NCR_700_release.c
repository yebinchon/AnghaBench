
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Scsi_Host {scalar_t__* hostdata; } ;
struct NCR_700_Host_Parameters {int pScript; int script; int dev; } ;


 int TOTAL_MEM_SIZE ;
 int dma_free_noncoherent (int ,int ,int ,int ) ;

int
NCR_700_release(struct Scsi_Host *host)
{
 struct NCR_700_Host_Parameters *hostdata =
  (struct NCR_700_Host_Parameters *)host->hostdata[0];

 dma_free_noncoherent(hostdata->dev, TOTAL_MEM_SIZE,
          hostdata->script, hostdata->pScript);
 return 1;
}
