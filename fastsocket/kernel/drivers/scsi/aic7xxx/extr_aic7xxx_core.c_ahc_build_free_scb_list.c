
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ahc_softc {int flags; TYPE_1__* scb_data; } ;
struct TYPE_2__ {int maxhscbs; } ;


 int AHC_LSCBS_ENABLED ;
 int AHC_PAGESCBS ;
 scalar_t__ FREE_SCBH ;
 scalar_t__ SCBPTR ;
 scalar_t__ SCB_BASE ;
 scalar_t__ SCB_CONTROL ;
 int SCB_LIST_NULL ;
 scalar_t__ SCB_LUN ;
 scalar_t__ SCB_NEXT ;
 scalar_t__ SCB_SCSIID ;
 scalar_t__ SCB_TAG ;
 int ahc_outb (struct ahc_softc*,scalar_t__,int) ;

__attribute__((used)) static void
ahc_build_free_scb_list(struct ahc_softc *ahc)
{
 int scbsize;
 int i;

 scbsize = 32;
 if ((ahc->flags & AHC_LSCBS_ENABLED) != 0)
  scbsize = 64;

 for (i = 0; i < ahc->scb_data->maxhscbs; i++) {
  int j;

  ahc_outb(ahc, SCBPTR, i);






  for (j = 0; j < scbsize; j++)
   ahc_outb(ahc, SCB_BASE+j, 0xFF);


  ahc_outb(ahc, SCB_CONTROL, 0);


  if ((ahc->flags & AHC_PAGESCBS) != 0)
   ahc_outb(ahc, SCB_NEXT, i+1);
  else
   ahc_outb(ahc, SCB_NEXT, SCB_LIST_NULL);


  ahc_outb(ahc, SCB_TAG, SCB_LIST_NULL);
  ahc_outb(ahc, SCB_SCSIID, 0xFF);
  ahc_outb(ahc, SCB_LUN, 0xFF);
 }

 if ((ahc->flags & AHC_PAGESCBS) != 0) {

  ahc_outb(ahc, FREE_SCBH, 0);
 } else {

  ahc_outb(ahc, FREE_SCBH, SCB_LIST_NULL);
 }


 ahc_outb(ahc, SCBPTR, i-1);
 ahc_outb(ahc, SCB_NEXT, SCB_LIST_NULL);
}
