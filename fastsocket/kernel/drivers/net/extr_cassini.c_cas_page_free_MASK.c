#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct cas {int /*<<< orphan*/  page_order; int /*<<< orphan*/  page_size; int /*<<< orphan*/  pdev; } ;
struct TYPE_4__ {int /*<<< orphan*/  buffer; int /*<<< orphan*/  dma_addr; } ;
typedef  TYPE_1__ cas_page_t ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct cas *cp, cas_page_t *page)
{
	FUNC2(cp->pdev, page->dma_addr, cp->page_size,
		       PCI_DMA_FROMDEVICE);
	FUNC0(page->buffer, cp->page_order);
	FUNC1(page);
	return 0;
}