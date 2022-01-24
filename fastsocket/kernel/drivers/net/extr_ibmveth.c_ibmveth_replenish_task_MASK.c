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
typedef  int /*<<< orphan*/  u64 ;
struct ibmveth_buff_pool {scalar_t__ threshold; int /*<<< orphan*/  available; scalar_t__ active; } ;
struct ibmveth_adapter {scalar_t__ buffer_list_addr; int /*<<< orphan*/  rx_no_buffer; struct ibmveth_buff_pool* rx_buff_pool; int /*<<< orphan*/  replenish_task_cycles; } ;

/* Variables and functions */
 int IBMVETH_NUM_BUFF_POOLS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ibmveth_adapter*,struct ibmveth_buff_pool*) ; 

__attribute__((used)) static void FUNC2(struct ibmveth_adapter *adapter)
{
	int i;

	adapter->replenish_task_cycles++;

	for (i = (IBMVETH_NUM_BUFF_POOLS - 1); i >= 0; i--) {
		struct ibmveth_buff_pool *pool = &adapter->rx_buff_pool[i];

		if (pool->active &&
		    (FUNC0(&pool->available) < pool->threshold))
			FUNC1(adapter, pool);
	}

	adapter->rx_no_buffer = *(u64 *)(((char*)adapter->buffer_list_addr) +
						4096 - 8);
}