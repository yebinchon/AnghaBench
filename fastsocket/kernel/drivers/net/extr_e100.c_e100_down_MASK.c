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
struct nic {int /*<<< orphan*/  netdev; int /*<<< orphan*/  watchdog; TYPE_1__* pdev; int /*<<< orphan*/  napi; } ;
struct TYPE_2__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct nic*) ; 
 int /*<<< orphan*/  FUNC2 (struct nic*) ; 
 int /*<<< orphan*/  FUNC3 (struct nic*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct nic *nic)
{
	/* wait here for poll to complete */
	FUNC5(&nic->napi);
	FUNC7(nic->netdev);
	FUNC2(nic);
	FUNC4(nic->pdev->irq, nic->netdev);
	FUNC0(&nic->watchdog);
	FUNC6(nic->netdev);
	FUNC1(nic);
	FUNC3(nic);
}