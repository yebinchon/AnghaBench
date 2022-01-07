
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct pcmcia_device {scalar_t__ win; int * dev_node; TYPE_1__* priv; } ;
struct TYPE_5__ {TYPE_3__* host; } ;
typedef TYPE_1__ scsi_info_t ;
struct TYPE_6__ {scalar_t__ MmioAddress; } ;
typedef TYPE_2__ nsp_hw_data ;
struct TYPE_7__ {scalar_t__ hostdata; } ;


 int KERN_DEBUG ;
 int NSP_DEBUG_INIT ;
 int iounmap (void*) ;
 int nsp_dbg (int ,char*,struct pcmcia_device*) ;
 int nsp_msg (int ,char*) ;
 int pcmcia_disable_device (struct pcmcia_device*) ;
 int scsi_host_put (TYPE_3__*) ;
 int scsi_remove_host (TYPE_3__*) ;

__attribute__((used)) static void nsp_cs_release(struct pcmcia_device *link)
{
 scsi_info_t *info = link->priv;
 nsp_hw_data *data = ((void*)0);

 if (info->host == ((void*)0)) {
  nsp_msg(KERN_DEBUG, "unexpected card release call.");
 } else {
  data = (nsp_hw_data *)info->host->hostdata;
 }

 nsp_dbg(NSP_DEBUG_INIT, "link=0x%p", link);


 if (info->host != ((void*)0)) {
  scsi_remove_host(info->host);
 }
 link->dev_node = ((void*)0);

 if (link->win) {
  if (data != ((void*)0)) {
   iounmap((void *)(data->MmioAddress));
  }
 }
 pcmcia_disable_device(link);

 if (info->host != ((void*)0)) {
  scsi_host_put(info->host);
 }
}
