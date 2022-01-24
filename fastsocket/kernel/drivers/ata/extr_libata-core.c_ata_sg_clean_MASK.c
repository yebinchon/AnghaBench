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
struct scatterlist {int dummy; } ;
struct ata_queued_cmd {int dma_dir; struct scatterlist* sg; int /*<<< orphan*/  flags; int /*<<< orphan*/  orig_n_elem; scalar_t__ n_elem; struct ata_port* ap; } ;
struct ata_port {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATA_QCFLAG_DMAMAP ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct scatterlist*,int /*<<< orphan*/ ,int) ; 

void FUNC3(struct ata_queued_cmd *qc)
{
	struct ata_port *ap = qc->ap;
	struct scatterlist *sg = qc->sg;
	int dir = qc->dma_dir;

	FUNC1(sg == NULL);

	FUNC0("unmapping %u sg elements\n", qc->n_elem);

	if (qc->n_elem)
		FUNC2(ap->dev, sg, qc->orig_n_elem, dir);

	qc->flags &= ~ATA_QCFLAG_DMAMAP;
	qc->sg = NULL;
}