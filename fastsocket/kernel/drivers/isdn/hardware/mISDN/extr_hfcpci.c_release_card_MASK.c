#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_long ;
struct TYPE_6__ {int /*<<< orphan*/ * function; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  l1; TYPE_3__ timer; } ;
struct TYPE_4__ {scalar_t__ protocol; scalar_t__ int_m2; } ;
struct hfc_pci {int /*<<< orphan*/  pdev; TYPE_2__ dch; int /*<<< orphan*/ * bch; int /*<<< orphan*/  irq; scalar_t__ initdone; TYPE_1__ hw; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOSE_CHANNEL ; 
 int /*<<< orphan*/  ISDN_P_NONE ; 
 scalar_t__ ISDN_P_TE_S0 ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (struct hfc_pci*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct hfc_pci*) ; 
 int /*<<< orphan*/  FUNC3 (struct hfc_pci*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct hfc_pci*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC13(struct hfc_pci *hc) {
	u_long	flags;

	FUNC11(&hc->lock, flags);
	hc->hw.int_m2 = 0; /* interrupt output off ! */
	FUNC1(hc);
	FUNC8(&hc->bch[0], 1, ISDN_P_NONE);
	FUNC8(&hc->bch[1], 2, ISDN_P_NONE);
	if (hc->dch.timer.function != NULL) {
		FUNC0(&hc->dch.timer);
		hc->dch.timer.function = NULL;
	}
	FUNC12(&hc->lock, flags);
	if (hc->hw.protocol == ISDN_P_TE_S0)
		FUNC4(hc->dch.l1, CLOSE_CHANNEL);
	if (hc->initdone)
		FUNC2(hc->irq, hc);
	FUNC10(hc); /* must release after free_irq! */
	FUNC7(&hc->dch.dev);
	FUNC5(&hc->bch[1]);
	FUNC5(&hc->bch[0]);
	FUNC6(&hc->dch);
	FUNC9(hc->pdev, NULL);
	FUNC3(hc);
}