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
struct sbmacdma {int /*<<< orphan*/ * sbdma_ctxtable; int /*<<< orphan*/ * sbdma_dscrtable; int /*<<< orphan*/ * sbdma_dscrtable_unaligned; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(struct sbmacdma *d)
{
	if (d->sbdma_dscrtable_unaligned) {
		FUNC0(d->sbdma_dscrtable_unaligned);
		d->sbdma_dscrtable_unaligned = d->sbdma_dscrtable = NULL;
	}

	if (d->sbdma_ctxtable) {
		FUNC0(d->sbdma_ctxtable);
		d->sbdma_ctxtable = NULL;
	}
}