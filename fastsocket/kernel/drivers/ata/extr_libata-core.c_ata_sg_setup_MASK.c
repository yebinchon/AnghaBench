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
struct ata_queued_cmd {unsigned int n_elem; unsigned int orig_n_elem; int /*<<< orphan*/  flags; int /*<<< orphan*/  dma_dir; int /*<<< orphan*/  sg; struct ata_port* ap; } ;
struct ata_port {int /*<<< orphan*/  dev; int /*<<< orphan*/  print_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATA_QCFLAG_DMAMAP ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct ata_queued_cmd *qc)
{
	struct ata_port *ap = qc->ap;
	unsigned int n_elem;

	FUNC1("ENTER, ata%u\n", ap->print_id);

	n_elem = FUNC2(ap->dev, qc->sg, qc->n_elem, qc->dma_dir);
	if (n_elem < 1)
		return -1;

	FUNC0("%d sg elements mapped\n", n_elem);
	qc->orig_n_elem = qc->n_elem;
	qc->n_elem = n_elem;
	qc->flags |= ATA_QCFLAG_DMAMAP;

	return 0;
}