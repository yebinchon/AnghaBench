#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ dma_addr; scalar_t__ cpu_addr; int /*<<< orphan*/  tsize; int /*<<< orphan*/  enabled; } ;
struct iwl_test {TYPE_2__ trace; TYPE_1__* trans; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_test*) ; 

__attribute__((used)) static void FUNC2(struct iwl_test *tst)
{
	if (!tst->trace.enabled)
		return;

	if (tst->trace.cpu_addr && tst->trace.dma_addr)
		FUNC0(tst->trans->dev,
				  tst->trace.tsize,
				  tst->trace.cpu_addr,
				  tst->trace.dma_addr);

	FUNC1(tst);
}