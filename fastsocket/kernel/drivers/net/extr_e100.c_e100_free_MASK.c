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
struct nic {int /*<<< orphan*/ * mem; int /*<<< orphan*/  dma_addr; int /*<<< orphan*/  pdev; } ;
struct mem {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct nic *nic)
{
	if (nic->mem) {
		FUNC0(nic->pdev, sizeof(struct mem),
			nic->mem, nic->dma_addr);
		nic->mem = NULL;
	}
}