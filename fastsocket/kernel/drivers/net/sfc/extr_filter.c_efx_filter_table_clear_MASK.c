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
struct efx_nic {struct efx_filter_state* filter_state; } ;
struct efx_filter_table {unsigned int size; scalar_t__ used; TYPE_1__* spec; } ;
struct efx_filter_state {int /*<<< orphan*/  lock; struct efx_filter_table* table; } ;
typedef  enum efx_filter_table_id { ____Placeholder_efx_filter_table_id } efx_filter_table_id ;
typedef  enum efx_filter_priority { ____Placeholder_efx_filter_priority } efx_filter_priority ;
struct TYPE_2__ {int priority; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct efx_nic*,struct efx_filter_table*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct efx_filter_table*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct efx_nic *efx,
				   enum efx_filter_table_id table_id,
				   enum efx_filter_priority priority)
{
	struct efx_filter_state *state = efx->filter_state;
	struct efx_filter_table *table = &state->table[table_id];
	unsigned int filter_idx;

	FUNC2(&state->lock);

	for (filter_idx = 0; filter_idx < table->size; ++filter_idx)
		if (table->spec[filter_idx].priority <= priority)
			FUNC0(efx, table, filter_idx);
	if (table->used == 0)
		FUNC1(table);

	FUNC3(&state->lock);
}