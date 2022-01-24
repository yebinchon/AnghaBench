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
struct dynpcc_info {scalar_t__ last_bytes; scalar_t__ last_pkts; scalar_t__ intr_cnt; scalar_t__ attempt; scalar_t__ cur; int cnt; } ;
struct jme_adapter {int /*<<< orphan*/  rxclean_task; struct dynpcc_info dpi; } ;
struct TYPE_2__ {scalar_t__ rx_bytes; scalar_t__ rx_packets; } ;

/* Variables and functions */
 TYPE_1__ FUNC0 (struct jme_adapter*) ; 
 scalar_t__ PCC_INTR_THRESHOLD ; 
 int /*<<< orphan*/  PCC_P1 ; 
 int /*<<< orphan*/  PCC_P2 ; 
 scalar_t__ PCC_P2_THRESHOLD ; 
 int /*<<< orphan*/  PCC_P3 ; 
 scalar_t__ PCC_P3_THRESHOLD ; 
 int /*<<< orphan*/  FUNC1 (struct dynpcc_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct jme_adapter*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static void
FUNC5(struct jme_adapter *jme)
{
	register struct dynpcc_info *dpi = &(jme->dpi);

	if ((FUNC0(jme).rx_bytes - dpi->last_bytes) > PCC_P3_THRESHOLD)
		FUNC1(dpi, PCC_P3);
	else if ((FUNC0(jme).rx_packets - dpi->last_pkts) > PCC_P2_THRESHOLD
	|| dpi->intr_cnt > PCC_INTR_THRESHOLD)
		FUNC1(dpi, PCC_P2);
	else
		FUNC1(dpi, PCC_P1);

	if (FUNC4(dpi->attempt != dpi->cur && dpi->cnt > 5)) {
		if (dpi->attempt < dpi->cur)
			FUNC3(&jme->rxclean_task);
		FUNC2(jme, dpi->attempt);
		dpi->cur = dpi->attempt;
		dpi->cnt = 0;
	}
}