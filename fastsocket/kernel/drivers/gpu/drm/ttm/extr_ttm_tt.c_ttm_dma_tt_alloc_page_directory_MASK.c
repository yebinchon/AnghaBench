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
struct TYPE_2__ {int /*<<< orphan*/  num_pages; void* pages; } ;
struct ttm_dma_tt {TYPE_1__ ttm; void* dma_address; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC1(struct ttm_dma_tt *ttm)
{
	ttm->ttm.pages = FUNC0(ttm->ttm.num_pages, sizeof(void*));
	ttm->dma_address = FUNC0(ttm->ttm.num_pages,
					    sizeof(*ttm->dma_address));
}