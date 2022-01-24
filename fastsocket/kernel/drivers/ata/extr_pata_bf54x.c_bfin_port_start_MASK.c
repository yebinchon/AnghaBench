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
struct ata_port {int /*<<< orphan*/  dev; scalar_t__ mwdma_mask; scalar_t__ udma_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  CH_ATAPI_RX ; 
 int /*<<< orphan*/  CH_ATAPI_TX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC4(struct ata_port *ap)
{
	FUNC0(ap->dev, "in atapi port start\n");
	if (!(ap->udma_mask || ap->mwdma_mask))
		return 0;

	if (FUNC3(CH_ATAPI_RX, "BFIN ATAPI RX DMA") >= 0) {
		if (FUNC3(CH_ATAPI_TX,
			"BFIN ATAPI TX DMA") >= 0)
			return 0;

		FUNC2(CH_ATAPI_RX);
	}

	ap->udma_mask = 0;
	ap->mwdma_mask = 0;
	FUNC1(ap->dev, "Unable to request ATAPI DMA!"
		" Continue in PIO mode.\n");

	return 0;
}