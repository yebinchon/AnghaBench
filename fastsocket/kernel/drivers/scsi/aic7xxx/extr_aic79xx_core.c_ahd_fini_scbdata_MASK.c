#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct scb_data {int init_level; int /*<<< orphan*/  hscb_dmat; int /*<<< orphan*/  hscb_maps; int /*<<< orphan*/  sg_dmat; int /*<<< orphan*/  sg_maps; int /*<<< orphan*/  sense_dmat; int /*<<< orphan*/  sense_maps; } ;
struct map_node {int /*<<< orphan*/  dmamap; int /*<<< orphan*/  vaddr; } ;
struct ahd_softc {struct scb_data scb_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 struct map_node* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ahd_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ahd_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ahd_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct map_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  links ; 

__attribute__((used)) static void
FUNC6(struct ahd_softc *ahd)
{
	struct scb_data *scb_data;

	scb_data = &ahd->scb_data;
	if (scb_data == NULL)
		return;

	switch (scb_data->init_level) {
	default:
	case 7:
	{
		struct map_node *sns_map;

		while ((sns_map = FUNC0(&scb_data->sense_maps)) != NULL) {
			FUNC1(&scb_data->sense_maps, links);
			FUNC3(ahd, scb_data->sense_dmat,
					  sns_map->dmamap);
			FUNC4(ahd, scb_data->sense_dmat,
					sns_map->vaddr, sns_map->dmamap);
			FUNC5(sns_map, M_DEVBUF);
		}
		FUNC2(ahd, scb_data->sense_dmat);
		/* FALLTHROUGH */
	}
	case 6:
	{
		struct map_node *sg_map;

		while ((sg_map = FUNC0(&scb_data->sg_maps)) != NULL) {
			FUNC1(&scb_data->sg_maps, links);
			FUNC3(ahd, scb_data->sg_dmat,
					  sg_map->dmamap);
			FUNC4(ahd, scb_data->sg_dmat,
					sg_map->vaddr, sg_map->dmamap);
			FUNC5(sg_map, M_DEVBUF);
		}
		FUNC2(ahd, scb_data->sg_dmat);
		/* FALLTHROUGH */
	}
	case 5:
	{
		struct map_node *hscb_map;

		while ((hscb_map = FUNC0(&scb_data->hscb_maps)) != NULL) {
			FUNC1(&scb_data->hscb_maps, links);
			FUNC3(ahd, scb_data->hscb_dmat,
					  hscb_map->dmamap);
			FUNC4(ahd, scb_data->hscb_dmat,
					hscb_map->vaddr, hscb_map->dmamap);
			FUNC5(hscb_map, M_DEVBUF);
		}
		FUNC2(ahd, scb_data->hscb_dmat);
		/* FALLTHROUGH */
	}
	case 4:
	case 3:
	case 2:
	case 1:
	case 0:
		break;
	}
}