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
struct sn_hwperf_object_info {int dummy; } ;
typedef  int /*<<< orphan*/  cnodeid_t ;

/* Variables and functions */
 int FUNC0 (int*,struct sn_hwperf_object_info**) ; 
 int FUNC1 (struct sn_hwperf_object_info*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sn_hwperf_object_info*) ; 

int FUNC3(cnodeid_t node,
	cnodeid_t *near_mem_node, cnodeid_t *near_cpu_node)
{
	int e;
	int nobj;
	struct sn_hwperf_object_info *objbuf;

	if ((e = FUNC0(&nobj, &objbuf)) == 0) {
		e = FUNC1(objbuf, nobj,
			node, near_mem_node, near_cpu_node);
		FUNC2(objbuf);
	}

	return e;
}