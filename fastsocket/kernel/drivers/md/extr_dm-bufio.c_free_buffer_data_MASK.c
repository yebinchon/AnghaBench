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
struct dm_bufio_client {int /*<<< orphan*/  pages_per_block_bits; } ;
typedef  enum data_mode { ____Placeholder_data_mode } data_mode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
#define  DATA_MODE_GET_FREE_PAGES 130 
#define  DATA_MODE_SLAB 129 
#define  DATA_MODE_VMALLOC 128 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct dm_bufio_client*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 

__attribute__((used)) static void FUNC6(struct dm_bufio_client *c,
			     void *data, enum data_mode data_mode)
{
	switch (data_mode) {
	case DATA_MODE_SLAB:
		FUNC4(FUNC2(c), data);
		break;

	case DATA_MODE_GET_FREE_PAGES:
		FUNC3((unsigned long)data, c->pages_per_block_bits);
		break;

	case DATA_MODE_VMALLOC:
		FUNC5(data);
		break;

	default:
		FUNC1("dm_bufio_free_buffer_data: bad data mode: %d",
		       data_mode);
		FUNC0();
	}
}