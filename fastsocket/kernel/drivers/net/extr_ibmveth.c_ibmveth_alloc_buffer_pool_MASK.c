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
typedef  int /*<<< orphan*/  u16 ;
struct ibmveth_buff_pool {int* free_map; int size; int* dma_addr; int* skbuff; scalar_t__ consumer_index; scalar_t__ producer_index; int /*<<< orphan*/  available; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 void* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct ibmveth_buff_pool *pool)
{
	int i;

	pool->free_map = FUNC2(sizeof(u16) * pool->size, GFP_KERNEL);

	if (!pool->free_map)
		return -1;

	pool->dma_addr = FUNC2(sizeof(dma_addr_t) * pool->size, GFP_KERNEL);
	if (!pool->dma_addr) {
		FUNC1(pool->free_map);
		pool->free_map = NULL;
		return -1;
	}

	pool->skbuff = FUNC2(sizeof(void*) * pool->size, GFP_KERNEL);

	if (!pool->skbuff) {
		FUNC1(pool->dma_addr);
		pool->dma_addr = NULL;

		FUNC1(pool->free_map);
		pool->free_map = NULL;
		return -1;
	}

	FUNC3(pool->skbuff, 0, sizeof(void*) * pool->size);
	FUNC3(pool->dma_addr, 0, sizeof(dma_addr_t) * pool->size);

	for (i = 0; i < pool->size; ++i)
		pool->free_map[i] = i;

	FUNC0(&pool->available, 0);
	pool->producer_index = 0;
	pool->consumer_index = 0;

	return 0;
}