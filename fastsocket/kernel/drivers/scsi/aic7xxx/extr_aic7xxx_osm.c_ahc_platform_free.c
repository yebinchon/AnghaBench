
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_target {int dummy; } ;
struct TYPE_3__ {scalar_t__ ioport; int * maddr; } ;
struct ahc_softc {scalar_t__ tag; TYPE_2__* platform_data; TYPE_1__ bsh; } ;
struct TYPE_4__ {scalar_t__ irq; scalar_t__ host; int mem_busaddr; struct scsi_target** starget; } ;


 scalar_t__ AHC_LINUX_NOIRQ ;
 int AHC_NUM_TARGETS ;
 scalar_t__ BUS_SPACE_MEMIO ;
 scalar_t__ BUS_SPACE_PIO ;
 int M_DEVBUF ;
 int free (TYPE_2__*,int ) ;
 int free_irq (scalar_t__,struct ahc_softc*) ;
 int iounmap (int *) ;
 int release_mem_region (int ,int) ;
 int release_region (scalar_t__,int) ;
 int scsi_host_put (scalar_t__) ;

void
ahc_platform_free(struct ahc_softc *ahc)
{
 struct scsi_target *starget;
 int i;

 if (ahc->platform_data != ((void*)0)) {

  for (i = 0; i < AHC_NUM_TARGETS; i++) {
   starget = ahc->platform_data->starget[i];
   if (starget != ((void*)0)) {
    ahc->platform_data->starget[i] = ((void*)0);
    }
   }

  if (ahc->platform_data->irq != AHC_LINUX_NOIRQ)
   free_irq(ahc->platform_data->irq, ahc);
  if (ahc->tag == BUS_SPACE_PIO
   && ahc->bsh.ioport != 0)
   release_region(ahc->bsh.ioport, 256);
  if (ahc->tag == BUS_SPACE_MEMIO
   && ahc->bsh.maddr != ((void*)0)) {
   iounmap(ahc->bsh.maddr);
   release_mem_region(ahc->platform_data->mem_busaddr,
        0x1000);
  }

  if (ahc->platform_data->host)
   scsi_host_put(ahc->platform_data->host);

  free(ahc->platform_data, M_DEVBUF);
 }
}
