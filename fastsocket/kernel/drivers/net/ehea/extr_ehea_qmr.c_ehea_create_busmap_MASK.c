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

/* Variables and functions */
 unsigned long long MAX_PHYSMEM_BITS ; 
 int /*<<< orphan*/  ehea_busmap_mutex ; 
 int /*<<< orphan*/  ehea_create_busmap_callback ; 
 scalar_t__ ehea_mr_len ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,unsigned long long,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC3(void)
{
	int ret;

	FUNC0(&ehea_busmap_mutex);
	ehea_mr_len = 0;
	ret = FUNC2(0, 1ULL << MAX_PHYSMEM_BITS, NULL,
				   ehea_create_busmap_callback);
	FUNC1(&ehea_busmap_mutex);
	return ret;
}