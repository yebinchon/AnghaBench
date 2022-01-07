
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcmcia_device {int * priv; } ;
struct TYPE_2__ {int stop; } ;
typedef TYPE_1__ scsi_info_t ;


 int NSP_DEBUG_INIT ;
 int kfree (int *) ;
 int nsp_cs_release (struct pcmcia_device*) ;
 int nsp_dbg (int ,char*,struct pcmcia_device*) ;

__attribute__((used)) static void nsp_cs_detach(struct pcmcia_device *link)
{
 nsp_dbg(NSP_DEBUG_INIT, "in, link=0x%p", link);

 ((scsi_info_t *)link->priv)->stop = 1;
 nsp_cs_release(link);

 kfree(link->priv);
 link->priv = ((void*)0);
}
