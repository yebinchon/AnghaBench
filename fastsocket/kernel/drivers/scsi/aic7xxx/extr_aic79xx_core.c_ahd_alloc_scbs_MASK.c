#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int u_int ;
struct scb_platform_data {TYPE_1__* col_scb; struct hardware_scb* hscb; int /*<<< orphan*/  dmamap; int /*<<< orphan*/  flags; struct ahd_softc* ahd_softc; void* sg_list_busaddr; void* sense_busaddr; int /*<<< orphan*/ * sense_data; int /*<<< orphan*/ * sg_list; struct scb_platform_data* sense_map; struct scb_platform_data* sg_map; struct scb_platform_data* hscb_map; struct scb_platform_data* platform_data; void* physaddr; int /*<<< orphan*/ * vaddr; } ;
struct scb_data {int numscbs; int scbs_left; int sgs_left; int sense_left; int /*<<< orphan*/  sense_dmat; int /*<<< orphan*/  sense_maps; int /*<<< orphan*/  sg_dmat; int /*<<< orphan*/  sg_maps; int /*<<< orphan*/  hscb_dmat; int /*<<< orphan*/  hscb_maps; } ;
struct scb {TYPE_1__* col_scb; struct hardware_scb* hscb; int /*<<< orphan*/  dmamap; int /*<<< orphan*/  flags; struct ahd_softc* ahd_softc; void* sg_list_busaddr; void* sense_busaddr; int /*<<< orphan*/ * sense_data; int /*<<< orphan*/ * sg_list; struct scb* sense_map; struct scb* sg_map; struct scb* hscb_map; struct scb* platform_data; void* physaddr; int /*<<< orphan*/ * vaddr; } ;
struct map_node {TYPE_1__* col_scb; struct hardware_scb* hscb; int /*<<< orphan*/  dmamap; int /*<<< orphan*/  flags; struct ahd_softc* ahd_softc; void* sg_list_busaddr; void* sense_busaddr; int /*<<< orphan*/ * sense_data; int /*<<< orphan*/ * sg_list; struct map_node* sense_map; struct map_node* sg_map; struct map_node* hscb_map; struct map_node* platform_data; void* physaddr; int /*<<< orphan*/ * vaddr; } ;
struct hardware_scb {int /*<<< orphan*/  tag; int /*<<< orphan*/  hscb_busaddr; } ;
struct ahd_softc {int flags; int /*<<< orphan*/  buffer_dmat; struct scb_data scb_data; } ;
struct ahd_dma_seg {int dummy; } ;
struct ahd_dma64_seg {int dummy; } ;
typedef  void* dma_addr_t ;
struct TYPE_2__ {struct scb_platform_data* col_scb; } ;

/* Variables and functions */
 int AHD_64BIT_ADDRESSING ; 
 int AHD_SCB_MAX_ALLOC ; 
 int AHD_SENSE_BUFSIZE ; 
 int AHD_SHOW_MEMORY ; 
 int /*<<< orphan*/  BUS_DMA_NOWAIT ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  SCB_FLAG_NONE ; 
 struct scb_platform_data* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct scb_platform_data*,int /*<<< orphan*/ ) ; 
 int ahd_debug ; 
 int /*<<< orphan*/  ahd_dmamap_cb ; 
 int FUNC2 (struct ahd_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ahd_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,void**,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct ahd_softc*,int /*<<< orphan*/ ,void**,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 (struct ahd_softc*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ahd_softc*,struct scb_platform_data*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 int FUNC9 (struct ahd_softc*) ; 
 int FUNC10 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC11 (struct scb_platform_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  links ; 
 struct scb_platform_data* FUNC12 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct hardware_scb*,int /*<<< orphan*/ ,int) ; 
 int FUNC14 (int,int) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 

__attribute__((used)) static void
FUNC16(struct ahd_softc *ahd)
{
	struct scb_data *scb_data;
	struct scb	*next_scb;
	struct hardware_scb *hscb;
	struct map_node *hscb_map;
	struct map_node *sg_map;
	struct map_node *sense_map;
	uint8_t		*segs;
	uint8_t		*sense_data;
	dma_addr_t	 hscb_busaddr;
	dma_addr_t	 sg_busaddr;
	dma_addr_t	 sense_busaddr;
	int		 newcount;
	int		 i;

	scb_data = &ahd->scb_data;
	if (scb_data->numscbs >= AHD_SCB_MAX_ALLOC)
		/* Can't allocate any more */
		return;

	if (scb_data->scbs_left != 0) {
		int offset;

		offset = (PAGE_SIZE / sizeof(*hscb)) - scb_data->scbs_left;
		hscb_map = FUNC0(&scb_data->hscb_maps);
		hscb = &((struct hardware_scb *)hscb_map->vaddr)[offset];
		hscb_busaddr = hscb_map->physaddr + (offset * sizeof(*hscb));
	} else {
		hscb_map = FUNC12(sizeof(*hscb_map), M_DEVBUF, M_NOWAIT);

		if (hscb_map == NULL)
			return;

		/* Allocate the next batch of hardware SCBs */
		if (FUNC4(ahd, scb_data->hscb_dmat,
				     (void **)&hscb_map->vaddr,
				     BUS_DMA_NOWAIT, &hscb_map->dmamap) != 0) {
			FUNC11(hscb_map, M_DEVBUF);
			return;
		}

		FUNC1(&scb_data->hscb_maps, hscb_map, links);

		FUNC3(ahd, scb_data->hscb_dmat, hscb_map->dmamap,
				hscb_map->vaddr, PAGE_SIZE, ahd_dmamap_cb,
				&hscb_map->physaddr, /*flags*/0);

		hscb = (struct hardware_scb *)hscb_map->vaddr;
		hscb_busaddr = hscb_map->physaddr;
		scb_data->scbs_left = PAGE_SIZE / sizeof(*hscb);
	}

	if (scb_data->sgs_left != 0) {
		int offset;

		offset = ((FUNC9(ahd) / FUNC10(ahd))
		       - scb_data->sgs_left) * FUNC10(ahd);
		sg_map = FUNC0(&scb_data->sg_maps);
		segs = sg_map->vaddr + offset;
		sg_busaddr = sg_map->physaddr + offset;
	} else {
		sg_map = FUNC12(sizeof(*sg_map), M_DEVBUF, M_NOWAIT);

		if (sg_map == NULL)
			return;

		/* Allocate the next batch of S/G lists */
		if (FUNC4(ahd, scb_data->sg_dmat,
				     (void **)&sg_map->vaddr,
				     BUS_DMA_NOWAIT, &sg_map->dmamap) != 0) {
			FUNC11(sg_map, M_DEVBUF);
			return;
		}

		FUNC1(&scb_data->sg_maps, sg_map, links);

		FUNC3(ahd, scb_data->sg_dmat, sg_map->dmamap,
				sg_map->vaddr, FUNC9(ahd),
				ahd_dmamap_cb, &sg_map->physaddr, /*flags*/0);

		segs = sg_map->vaddr;
		sg_busaddr = sg_map->physaddr;
		scb_data->sgs_left =
		    FUNC9(ahd) / FUNC10(ahd);
#ifdef AHD_DEBUG
		if (ahd_debug & AHD_SHOW_MEMORY)
			printf("Mapped SG data\n");
#endif
	}

	if (scb_data->sense_left != 0) {
		int offset;

		offset = PAGE_SIZE - (AHD_SENSE_BUFSIZE * scb_data->sense_left);
		sense_map = FUNC0(&scb_data->sense_maps);
		sense_data = sense_map->vaddr + offset;
		sense_busaddr = sense_map->physaddr + offset;
	} else {
		sense_map = FUNC12(sizeof(*sense_map), M_DEVBUF, M_NOWAIT);

		if (sense_map == NULL)
			return;

		/* Allocate the next batch of sense buffers */
		if (FUNC4(ahd, scb_data->sense_dmat,
				     (void **)&sense_map->vaddr,
				     BUS_DMA_NOWAIT, &sense_map->dmamap) != 0) {
			FUNC11(sense_map, M_DEVBUF);
			return;
		}

		FUNC1(&scb_data->sense_maps, sense_map, links);

		FUNC3(ahd, scb_data->sense_dmat, sense_map->dmamap,
				sense_map->vaddr, PAGE_SIZE, ahd_dmamap_cb,
				&sense_map->physaddr, /*flags*/0);

		sense_data = sense_map->vaddr;
		sense_busaddr = sense_map->physaddr;
		scb_data->sense_left = PAGE_SIZE / AHD_SENSE_BUFSIZE;
#ifdef AHD_DEBUG
		if (ahd_debug & AHD_SHOW_MEMORY)
			printf("Mapped sense data\n");
#endif
	}

	newcount = FUNC14(scb_data->sense_left, scb_data->scbs_left);
	newcount = FUNC14(newcount, scb_data->sgs_left);
	newcount = FUNC14(newcount, (AHD_SCB_MAX_ALLOC - scb_data->numscbs));
	for (i = 0; i < newcount; i++) {
		struct scb_platform_data *pdata;
		u_int col_tag;
#ifndef __linux__
		int error;
#endif

		next_scb = (struct scb *)FUNC12(sizeof(*next_scb),
						M_DEVBUF, M_NOWAIT);
		if (next_scb == NULL)
			break;

		pdata = (struct scb_platform_data *)FUNC12(sizeof(*pdata),
							   M_DEVBUF, M_NOWAIT);
		if (pdata == NULL) {
			FUNC11(next_scb, M_DEVBUF);
			break;
		}
		next_scb->platform_data = pdata;
		next_scb->hscb_map = hscb_map;
		next_scb->sg_map = sg_map;
		next_scb->sense_map = sense_map;
		next_scb->sg_list = segs;
		next_scb->sense_data = sense_data;
		next_scb->sense_busaddr = sense_busaddr;
		FUNC13(hscb, 0, sizeof(*hscb));
		next_scb->hscb = hscb;
		hscb->hscb_busaddr = FUNC8(hscb_busaddr);

		/*
		 * The sequencer always starts with the second entry.
		 * The first entry is embedded in the scb.
		 */
		next_scb->sg_list_busaddr = sg_busaddr;
		if ((ahd->flags & AHD_64BIT_ADDRESSING) != 0)
			next_scb->sg_list_busaddr
			    += sizeof(struct ahd_dma64_seg);
		else
			next_scb->sg_list_busaddr += sizeof(struct ahd_dma_seg);
		next_scb->ahd_softc = ahd;
		next_scb->flags = SCB_FLAG_NONE;
#ifndef __linux__
		error = ahd_dmamap_create(ahd, ahd->buffer_dmat, /*flags*/0,
					  &next_scb->dmamap);
		if (error != 0) {
			free(next_scb, M_DEVBUF);
			free(pdata, M_DEVBUF);
			break;
		}
#endif
		next_scb->hscb->tag = FUNC7(scb_data->numscbs);
		col_tag = scb_data->numscbs ^ 0x100;
		next_scb->col_scb = FUNC5(ahd, col_tag);
		if (next_scb->col_scb != NULL)
			next_scb->col_scb->col_scb = next_scb;
		FUNC6(ahd, next_scb);
		hscb++;
		hscb_busaddr += sizeof(*hscb);
		segs += FUNC10(ahd);
		sg_busaddr += FUNC10(ahd);
		sense_data += AHD_SENSE_BUFSIZE;
		sense_busaddr += AHD_SENSE_BUFSIZE;
		scb_data->numscbs++;
		scb_data->sense_left--;
		scb_data->scbs_left--;
		scb_data->sgs_left--;
	}
}