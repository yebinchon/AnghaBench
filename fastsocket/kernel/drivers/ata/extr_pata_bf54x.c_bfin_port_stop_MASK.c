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
struct ata_port {scalar_t__ udma_mask; scalar_t__ mwdma_mask; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CH_ATAPI_RX ; 
 int /*<<< orphan*/  CH_ATAPI_TX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct ata_port *ap)
{
	FUNC0(ap->dev, "in atapi port stop\n");
	if (ap->udma_mask != 0 || ap->mwdma_mask != 0) {
		FUNC1(CH_ATAPI_RX);
		FUNC1(CH_ATAPI_TX);
	}
}