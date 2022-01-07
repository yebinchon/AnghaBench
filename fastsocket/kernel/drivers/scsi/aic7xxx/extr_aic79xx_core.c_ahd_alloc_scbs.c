
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int u_int ;
struct scb_platform_data {TYPE_1__* col_scb; struct hardware_scb* hscb; int dmamap; int flags; struct ahd_softc* ahd_softc; void* sg_list_busaddr; void* sense_busaddr; int * sense_data; int * sg_list; struct scb_platform_data* sense_map; struct scb_platform_data* sg_map; struct scb_platform_data* hscb_map; struct scb_platform_data* platform_data; void* physaddr; int * vaddr; } ;
struct scb_data {int numscbs; int scbs_left; int sgs_left; int sense_left; int sense_dmat; int sense_maps; int sg_dmat; int sg_maps; int hscb_dmat; int hscb_maps; } ;
struct scb {TYPE_1__* col_scb; struct hardware_scb* hscb; int dmamap; int flags; struct ahd_softc* ahd_softc; void* sg_list_busaddr; void* sense_busaddr; int * sense_data; int * sg_list; struct scb* sense_map; struct scb* sg_map; struct scb* hscb_map; struct scb* platform_data; void* physaddr; int * vaddr; } ;
struct map_node {TYPE_1__* col_scb; struct hardware_scb* hscb; int dmamap; int flags; struct ahd_softc* ahd_softc; void* sg_list_busaddr; void* sense_busaddr; int * sense_data; int * sg_list; struct map_node* sense_map; struct map_node* sg_map; struct map_node* hscb_map; struct map_node* platform_data; void* physaddr; int * vaddr; } ;
struct hardware_scb {int tag; int hscb_busaddr; } ;
struct ahd_softc {int flags; int buffer_dmat; struct scb_data scb_data; } ;
struct ahd_dma_seg {int dummy; } ;
struct ahd_dma64_seg {int dummy; } ;
typedef void* dma_addr_t ;
struct TYPE_2__ {struct scb_platform_data* col_scb; } ;


 int AHD_64BIT_ADDRESSING ;
 int AHD_SCB_MAX_ALLOC ;
 int AHD_SENSE_BUFSIZE ;
 int AHD_SHOW_MEMORY ;
 int BUS_DMA_NOWAIT ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int PAGE_SIZE ;
 int SCB_FLAG_NONE ;
 struct scb_platform_data* SLIST_FIRST (int *) ;
 int SLIST_INSERT_HEAD (int *,struct scb_platform_data*,int ) ;
 int ahd_debug ;
 int ahd_dmamap_cb ;
 int ahd_dmamap_create (struct ahd_softc*,int ,int ,int *) ;
 int ahd_dmamap_load (struct ahd_softc*,int ,int ,int *,int,int ,void**,int ) ;
 scalar_t__ ahd_dmamem_alloc (struct ahd_softc*,int ,void**,int ,int *) ;
 TYPE_1__* ahd_find_scb_by_tag (struct ahd_softc*,int) ;
 int ahd_free_scb (struct ahd_softc*,struct scb_platform_data*) ;
 int ahd_htole16 (int) ;
 int ahd_htole32 (void*) ;
 int ahd_sglist_allocsize (struct ahd_softc*) ;
 int ahd_sglist_size (struct ahd_softc*) ;
 int free (struct scb_platform_data*,int ) ;
 int links ;
 struct scb_platform_data* malloc (int,int ,int ) ;
 int memset (struct hardware_scb*,int ,int) ;
 int min (int,int) ;
 int printf (char*) ;

__attribute__((used)) static void
ahd_alloc_scbs(struct ahd_softc *ahd)
{
 struct scb_data *scb_data;
 struct scb *next_scb;
 struct hardware_scb *hscb;
 struct map_node *hscb_map;
 struct map_node *sg_map;
 struct map_node *sense_map;
 uint8_t *segs;
 uint8_t *sense_data;
 dma_addr_t hscb_busaddr;
 dma_addr_t sg_busaddr;
 dma_addr_t sense_busaddr;
 int newcount;
 int i;

 scb_data = &ahd->scb_data;
 if (scb_data->numscbs >= AHD_SCB_MAX_ALLOC)

  return;

 if (scb_data->scbs_left != 0) {
  int offset;

  offset = (PAGE_SIZE / sizeof(*hscb)) - scb_data->scbs_left;
  hscb_map = SLIST_FIRST(&scb_data->hscb_maps);
  hscb = &((struct hardware_scb *)hscb_map->vaddr)[offset];
  hscb_busaddr = hscb_map->physaddr + (offset * sizeof(*hscb));
 } else {
  hscb_map = malloc(sizeof(*hscb_map), M_DEVBUF, M_NOWAIT);

  if (hscb_map == ((void*)0))
   return;


  if (ahd_dmamem_alloc(ahd, scb_data->hscb_dmat,
         (void **)&hscb_map->vaddr,
         BUS_DMA_NOWAIT, &hscb_map->dmamap) != 0) {
   free(hscb_map, M_DEVBUF);
   return;
  }

  SLIST_INSERT_HEAD(&scb_data->hscb_maps, hscb_map, links);

  ahd_dmamap_load(ahd, scb_data->hscb_dmat, hscb_map->dmamap,
    hscb_map->vaddr, PAGE_SIZE, ahd_dmamap_cb,
    &hscb_map->physaddr, 0);

  hscb = (struct hardware_scb *)hscb_map->vaddr;
  hscb_busaddr = hscb_map->physaddr;
  scb_data->scbs_left = PAGE_SIZE / sizeof(*hscb);
 }

 if (scb_data->sgs_left != 0) {
  int offset;

  offset = ((ahd_sglist_allocsize(ahd) / ahd_sglist_size(ahd))
         - scb_data->sgs_left) * ahd_sglist_size(ahd);
  sg_map = SLIST_FIRST(&scb_data->sg_maps);
  segs = sg_map->vaddr + offset;
  sg_busaddr = sg_map->physaddr + offset;
 } else {
  sg_map = malloc(sizeof(*sg_map), M_DEVBUF, M_NOWAIT);

  if (sg_map == ((void*)0))
   return;


  if (ahd_dmamem_alloc(ahd, scb_data->sg_dmat,
         (void **)&sg_map->vaddr,
         BUS_DMA_NOWAIT, &sg_map->dmamap) != 0) {
   free(sg_map, M_DEVBUF);
   return;
  }

  SLIST_INSERT_HEAD(&scb_data->sg_maps, sg_map, links);

  ahd_dmamap_load(ahd, scb_data->sg_dmat, sg_map->dmamap,
    sg_map->vaddr, ahd_sglist_allocsize(ahd),
    ahd_dmamap_cb, &sg_map->physaddr, 0);

  segs = sg_map->vaddr;
  sg_busaddr = sg_map->physaddr;
  scb_data->sgs_left =
      ahd_sglist_allocsize(ahd) / ahd_sglist_size(ahd);




 }

 if (scb_data->sense_left != 0) {
  int offset;

  offset = PAGE_SIZE - (AHD_SENSE_BUFSIZE * scb_data->sense_left);
  sense_map = SLIST_FIRST(&scb_data->sense_maps);
  sense_data = sense_map->vaddr + offset;
  sense_busaddr = sense_map->physaddr + offset;
 } else {
  sense_map = malloc(sizeof(*sense_map), M_DEVBUF, M_NOWAIT);

  if (sense_map == ((void*)0))
   return;


  if (ahd_dmamem_alloc(ahd, scb_data->sense_dmat,
         (void **)&sense_map->vaddr,
         BUS_DMA_NOWAIT, &sense_map->dmamap) != 0) {
   free(sense_map, M_DEVBUF);
   return;
  }

  SLIST_INSERT_HEAD(&scb_data->sense_maps, sense_map, links);

  ahd_dmamap_load(ahd, scb_data->sense_dmat, sense_map->dmamap,
    sense_map->vaddr, PAGE_SIZE, ahd_dmamap_cb,
    &sense_map->physaddr, 0);

  sense_data = sense_map->vaddr;
  sense_busaddr = sense_map->physaddr;
  scb_data->sense_left = PAGE_SIZE / AHD_SENSE_BUFSIZE;




 }

 newcount = min(scb_data->sense_left, scb_data->scbs_left);
 newcount = min(newcount, scb_data->sgs_left);
 newcount = min(newcount, (AHD_SCB_MAX_ALLOC - scb_data->numscbs));
 for (i = 0; i < newcount; i++) {
  struct scb_platform_data *pdata;
  u_int col_tag;




  next_scb = (struct scb *)malloc(sizeof(*next_scb),
      M_DEVBUF, M_NOWAIT);
  if (next_scb == ((void*)0))
   break;

  pdata = (struct scb_platform_data *)malloc(sizeof(*pdata),
          M_DEVBUF, M_NOWAIT);
  if (pdata == ((void*)0)) {
   free(next_scb, M_DEVBUF);
   break;
  }
  next_scb->platform_data = pdata;
  next_scb->hscb_map = hscb_map;
  next_scb->sg_map = sg_map;
  next_scb->sense_map = sense_map;
  next_scb->sg_list = segs;
  next_scb->sense_data = sense_data;
  next_scb->sense_busaddr = sense_busaddr;
  memset(hscb, 0, sizeof(*hscb));
  next_scb->hscb = hscb;
  hscb->hscb_busaddr = ahd_htole32(hscb_busaddr);





  next_scb->sg_list_busaddr = sg_busaddr;
  if ((ahd->flags & AHD_64BIT_ADDRESSING) != 0)
   next_scb->sg_list_busaddr
       += sizeof(struct ahd_dma64_seg);
  else
   next_scb->sg_list_busaddr += sizeof(struct ahd_dma_seg);
  next_scb->ahd_softc = ahd;
  next_scb->flags = SCB_FLAG_NONE;
  next_scb->hscb->tag = ahd_htole16(scb_data->numscbs);
  col_tag = scb_data->numscbs ^ 0x100;
  next_scb->col_scb = ahd_find_scb_by_tag(ahd, col_tag);
  if (next_scb->col_scb != ((void*)0))
   next_scb->col_scb->col_scb = next_scb;
  ahd_free_scb(ahd, next_scb);
  hscb++;
  hscb_busaddr += sizeof(*hscb);
  segs += ahd_sglist_size(ahd);
  sg_busaddr += ahd_sglist_size(ahd);
  sense_data += AHD_SENSE_BUFSIZE;
  sense_busaddr += AHD_SENSE_BUFSIZE;
  scb_data->numscbs++;
  scb_data->sense_left--;
  scb_data->scbs_left--;
  scb_data->sgs_left--;
 }
}
