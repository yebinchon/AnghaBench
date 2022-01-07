
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int maxhscbs; } ;
struct ahd_softc {TYPE_1__ scb_data; } ;


 int SCB_CONTROL ;
 int SCB_LIST_NULL ;
 int SCB_NEXT ;
 int ahd_outb (struct ahd_softc*,int ,int ) ;
 int ahd_outw (struct ahd_softc*,int ,int ) ;
 int ahd_set_scbptr (struct ahd_softc*,int) ;

__attribute__((used)) static void
ahd_initialize_hscbs(struct ahd_softc *ahd)
{
 int i;

 for (i = 0; i < ahd->scb_data.maxhscbs; i++) {
  ahd_set_scbptr(ahd, i);


  ahd_outb(ahd, SCB_CONTROL, 0);


  ahd_outw(ahd, SCB_NEXT, SCB_LIST_NULL);
 }
}
