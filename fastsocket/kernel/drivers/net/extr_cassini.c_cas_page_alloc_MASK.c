#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct cas {int /*<<< orphan*/  page_size; int /*<<< orphan*/  pdev; int /*<<< orphan*/  page_order; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_6__ {int /*<<< orphan*/  buffer; int /*<<< orphan*/  dma_addr; int /*<<< orphan*/  list; } ;
typedef  TYPE_1__ cas_page_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 TYPE_1__* FUNC4 (int,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static cas_page_t *FUNC6(struct cas *cp, const gfp_t flags)
{
	cas_page_t *page;

	page = FUNC4(sizeof(cas_page_t), flags);
	if (!page)
		return NULL;

	FUNC0(&page->list);
	FUNC1(page, 0);
	page->buffer = FUNC2(flags, cp->page_order);
	if (!page->buffer)
		goto page_err;
	page->dma_addr = FUNC5(cp->pdev, page->buffer, 0,
				      cp->page_size, PCI_DMA_FROMDEVICE);
	return page;

page_err:
	FUNC3(page);
	return NULL;
}