#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct nic {int /*<<< orphan*/  watchdog; int /*<<< orphan*/  napi; TYPE_2__* netdev; TYPE_1__* pdev; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; } ;
struct TYPE_5__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct nic*) ; 
 int /*<<< orphan*/  FUNC2 (struct nic*) ; 
 int /*<<< orphan*/  FUNC3 (struct nic*) ; 
 int FUNC4 (struct nic*) ; 
 int /*<<< orphan*/  e100_intr ; 
 int FUNC5 (struct nic*) ; 
 int /*<<< orphan*/  FUNC6 (struct nic*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (struct nic*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 

__attribute__((used)) static int FUNC13(struct nic *nic)
{
	int err;

	if ((err = FUNC5(nic)))
		return err;
	if ((err = FUNC1(nic)))
		goto err_rx_clean_list;
	if ((err = FUNC4(nic)))
		goto err_clean_cbs;
	FUNC7(nic->netdev);
	FUNC8(nic, NULL);
	FUNC9(&nic->watchdog, jiffies);
	if ((err = FUNC12(nic->pdev->irq, e100_intr, IRQF_SHARED,
		nic->netdev->name, nic->netdev)))
		goto err_no_irq;
	FUNC11(nic->netdev);
	FUNC10(&nic->napi);
	/* enable ints _after_ enabling poll, preventing a race between
	 * disable ints+schedule */
	FUNC3(nic);
	return 0;

err_no_irq:
	FUNC0(&nic->watchdog);
err_clean_cbs:
	FUNC2(nic);
err_rx_clean_list:
	FUNC6(nic);
	return err;
}