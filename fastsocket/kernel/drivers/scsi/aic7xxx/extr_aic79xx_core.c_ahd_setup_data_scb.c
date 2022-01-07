
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
struct scb {int sg_list_busaddr; TYPE_1__* hscb; scalar_t__ sg_list; } ;
struct ahd_softc {int flags; } ;
struct ahd_dma_seg {int len; scalar_t__ addr; } ;
struct ahd_dma64_seg {int len; int addr; } ;
struct TYPE_2__ {int sgptr; int datacnt; int dataptr; } ;


 int AHD_39BIT_ADDRESSING ;
 int AHD_64BIT_ADDRESSING ;
 int SG_FULL_RESID ;
 int ahd_htole32 (int) ;
 int ahd_htole64 (int) ;
 int ahd_le32toh (int ) ;

__attribute__((used)) static void
ahd_setup_data_scb(struct ahd_softc *ahd, struct scb *scb)
{



 if ((ahd->flags & AHD_64BIT_ADDRESSING) != 0) {
  struct ahd_dma64_seg *sg;

  sg = (struct ahd_dma64_seg *)scb->sg_list;
  scb->hscb->dataptr = sg->addr;
  scb->hscb->datacnt = sg->len;
 } else {
  struct ahd_dma_seg *sg;
  uint32_t *dataptr_words;

  sg = (struct ahd_dma_seg *)scb->sg_list;
  dataptr_words = (uint32_t*)&scb->hscb->dataptr;
  dataptr_words[0] = sg->addr;
  dataptr_words[1] = 0;
  if ((ahd->flags & AHD_39BIT_ADDRESSING) != 0) {
   uint64_t high_addr;

   high_addr = ahd_le32toh(sg->len) & 0x7F000000;
   scb->hscb->dataptr |= ahd_htole64(high_addr << 8);
  }
  scb->hscb->datacnt = sg->len;
 }






 scb->hscb->sgptr = ahd_htole32(scb->sg_list_busaddr|SG_FULL_RESID);
}
