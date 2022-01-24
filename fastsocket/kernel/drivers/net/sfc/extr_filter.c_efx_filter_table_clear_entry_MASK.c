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
struct efx_nic {int dummy; } ;
struct efx_filter_table {scalar_t__ id; unsigned int step; scalar_t__ offset; int /*<<< orphan*/ * spec; int /*<<< orphan*/  used; int /*<<< orphan*/  used_bitmap; } ;
typedef  int /*<<< orphan*/  efx_oword_t ;

/* Variables and functions */
 scalar_t__ EFX_FILTER_TABLE_RX_DEF ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC2 (struct efx_nic*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct efx_nic*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct efx_nic *efx,
					 struct efx_filter_table *table,
					 unsigned int filter_idx)
{
	static efx_oword_t filter;

	if (table->id == EFX_FILTER_TABLE_RX_DEF) {
		/* RX default filters must always exist */
		FUNC2(efx, filter_idx);
		FUNC1(efx);
	} else if (FUNC5(filter_idx, table->used_bitmap)) {
		FUNC0(filter_idx, table->used_bitmap);
		--table->used;
		FUNC4(&table->spec[filter_idx], 0, sizeof(table->spec[0]));

		FUNC3(efx, &filter,
			   table->offset + table->step * filter_idx);
	}
}