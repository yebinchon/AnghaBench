
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct scb {struct map_node* hscb_map; struct hardware_scb* hscb; } ;
struct map_node {int dummy; } ;
struct hardware_scb {int hscb_busaddr; int next_hscb_busaddr; } ;
struct TYPE_2__ {struct scb** scbindex; } ;
struct ahd_softc {TYPE_1__ scb_data; struct map_node* next_queued_hscb_map; struct hardware_scb* next_queued_hscb; } ;


 size_t SCB_GET_TAG (struct scb*) ;
 int memcpy (struct hardware_scb*,struct hardware_scb*,int) ;

__attribute__((used)) static void
ahd_swap_with_next_hscb(struct ahd_softc *ahd, struct scb *scb)
{
 struct hardware_scb *q_hscb;
 struct map_node *q_hscb_map;
 uint32_t saved_hscb_busaddr;
 q_hscb = ahd->next_queued_hscb;
 q_hscb_map = ahd->next_queued_hscb_map;
 saved_hscb_busaddr = q_hscb->hscb_busaddr;
 memcpy(q_hscb, scb->hscb, sizeof(*scb->hscb));
 q_hscb->hscb_busaddr = saved_hscb_busaddr;
 q_hscb->next_hscb_busaddr = scb->hscb->hscb_busaddr;


 ahd->next_queued_hscb = scb->hscb;
 ahd->next_queued_hscb_map = scb->hscb_map;
 scb->hscb = q_hscb;
 scb->hscb_map = q_hscb_map;


 ahd->scb_data.scbindex[SCB_GET_TAG(scb)] = scb;
}
