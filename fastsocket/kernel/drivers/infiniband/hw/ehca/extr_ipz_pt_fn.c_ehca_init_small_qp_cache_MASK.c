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
struct ipz_small_queue_page {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  SLAB_HWCACHE_ALIGN ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  small_qp_cache ; 

int FUNC1(void)
{
	small_qp_cache = FUNC0("ehca_cache_small_qp",
					   sizeof(struct ipz_small_queue_page),
					   0, SLAB_HWCACHE_ALIGN, NULL);
	if (!small_qp_cache)
		return -ENOMEM;

	return 0;
}