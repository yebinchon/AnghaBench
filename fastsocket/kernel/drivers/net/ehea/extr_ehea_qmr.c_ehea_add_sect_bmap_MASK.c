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
 int /*<<< orphan*/  EHEA_BUSMAP_ADD_SECT ; 
 int /*<<< orphan*/  ehea_busmap_mutex ; 
 int FUNC0 (unsigned long,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(unsigned long pfn, unsigned long nr_pages)
{
	int ret;

	FUNC1(&ehea_busmap_mutex);
	ret = FUNC0(pfn, nr_pages, EHEA_BUSMAP_ADD_SECT);
	FUNC2(&ehea_busmap_mutex);
	return ret;
}