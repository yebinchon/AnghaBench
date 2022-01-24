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
struct psif {int /*<<< orphan*/  pclk; TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int PSIF_PSR_PRSCV_SIZE ; 
 int /*<<< orphan*/  PSR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct psif*,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct psif *psif)
{
	unsigned long prscv;
	unsigned long rate = FUNC2(psif->pclk);

	/* PRSCV = Pulse length (100 us) * PSIF module frequency. */
	prscv = 100 * (rate / 1000000UL);

	if (prscv > ((1<<PSIF_PSR_PRSCV_SIZE) - 1)) {
		prscv = (1<<PSIF_PSR_PRSCV_SIZE) - 1;
		FUNC3(&psif->pdev->dev, "pclk too fast, "
				"prescaler set to max\n");
	}

	FUNC1(psif->pclk);
	FUNC4(psif, PSR, prscv);
	FUNC0(psif->pclk);
}