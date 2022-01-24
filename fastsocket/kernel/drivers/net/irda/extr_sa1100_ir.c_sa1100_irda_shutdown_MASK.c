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
struct sa1100_irda {int /*<<< orphan*/  dev; TYPE_1__* pdata; int /*<<< orphan*/  txdma; int /*<<< orphan*/  rxdma; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* shutdown ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 scalar_t__ Ser2HSCR0 ; 
 scalar_t__ Ser2UTCR3 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct sa1100_irda *si)
{
	/*
	 * Stop all DMA activity.
	 */
	FUNC0(si->rxdma);
	FUNC0(si->txdma);

	/* Disable the port. */
	Ser2UTCR3 = 0;
	Ser2HSCR0 = 0;

	if (si->pdata->shutdown)
		si->pdata->shutdown(si->dev);
}