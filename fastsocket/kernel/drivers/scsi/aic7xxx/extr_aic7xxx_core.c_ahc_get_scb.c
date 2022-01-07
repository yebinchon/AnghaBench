
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scb {int dummy; } ;
struct ahc_softc {TYPE_1__* scb_data; } ;
struct TYPE_4__ {int sle; } ;
struct TYPE_3__ {int free_scbs; } ;


 struct scb* SLIST_FIRST (int *) ;
 int SLIST_REMOVE_HEAD (int *,int ) ;
 int ahc_alloc_scbs (struct ahc_softc*) ;
 TYPE_2__ links ;

struct scb *
ahc_get_scb(struct ahc_softc *ahc)
{
 struct scb *scb;

 if ((scb = SLIST_FIRST(&ahc->scb_data->free_scbs)) == ((void*)0)) {
  ahc_alloc_scbs(ahc);
  scb = SLIST_FIRST(&ahc->scb_data->free_scbs);
  if (scb == ((void*)0))
   return (((void*)0));
 }
 SLIST_REMOVE_HEAD(&ahc->scb_data->free_scbs, links.sle);
 return (scb);
}
