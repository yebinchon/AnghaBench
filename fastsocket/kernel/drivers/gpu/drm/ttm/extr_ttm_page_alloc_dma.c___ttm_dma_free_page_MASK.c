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
struct dma_pool {int /*<<< orphan*/  size; int /*<<< orphan*/  dev; } ;
struct dma_page {int /*<<< orphan*/  vaddr; int /*<<< orphan*/  dma; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dma_page*) ; 

__attribute__((used)) static void FUNC2(struct dma_pool *pool, struct dma_page *d_page)
{
	dma_addr_t dma = d_page->dma;
	FUNC0(pool->dev, pool->size, d_page->vaddr, dma);

	FUNC1(d_page);
	d_page = NULL;
}