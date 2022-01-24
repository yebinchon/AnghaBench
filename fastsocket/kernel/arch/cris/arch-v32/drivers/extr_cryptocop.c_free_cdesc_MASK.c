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
struct cryptocop_dma_desc {struct cryptocop_dma_desc* next; scalar_t__ from_pool; struct cryptocop_dma_desc* free_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct cryptocop_dma_desc* descr_pool_free_list ; 
 int /*<<< orphan*/  descr_pool_lock ; 
 int /*<<< orphan*/  descr_pool_no_free ; 
 int /*<<< orphan*/  FUNC1 (struct cryptocop_dma_desc*) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct cryptocop_dma_desc*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct cryptocop_dma_desc *cdesc)
{
	FUNC0(FUNC2("free_cdesc: cdesc 0x%p, from_pool=%d\n", cdesc, cdesc->from_pool));
	FUNC1(cdesc->free_buf);

	if (cdesc->from_pool) {
		unsigned long int flags;
		FUNC3(&descr_pool_lock, flags);
		cdesc->next = descr_pool_free_list;
		descr_pool_free_list = cdesc;
		++descr_pool_no_free;
		FUNC4(&descr_pool_lock, flags);
	} else {
		FUNC1(cdesc);
	}
}