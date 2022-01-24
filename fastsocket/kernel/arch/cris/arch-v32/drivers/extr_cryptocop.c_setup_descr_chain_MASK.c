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
struct cryptocop_dma_desc {struct cryptocop_dma_desc* next; TYPE_1__* dma_descr; } ;
typedef  int /*<<< orphan*/  dma_descr_data ;
struct TYPE_2__ {int /*<<< orphan*/ * next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC3(struct cryptocop_dma_desc *cd)
{
	FUNC0(FUNC1("setup_descr_chain: entering\n"));
	while (cd) {
		if (cd->next) {
			cd->dma_descr->next = (dma_descr_data*)FUNC2(cd->next->dma_descr);
		} else {
			cd->dma_descr->next = NULL;
		}
		cd = cd->next;
	}
	FUNC0(FUNC1("setup_descr_chain: exit\n"));
}