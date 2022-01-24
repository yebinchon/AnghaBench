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
struct adapter {int /*<<< orphan*/  list_node; } ;
struct TYPE_2__ {scalar_t__ add; } ;

/* Variables and functions */
 unsigned int CXGB4_ULD_MAX ; 
 int /*<<< orphan*/  adapter_list ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*,unsigned int) ; 
 int /*<<< orphan*/  uld_mutex ; 
 TYPE_1__* ulds ; 

__attribute__((used)) static void FUNC4(struct adapter *adap)
{
	unsigned int i;

	FUNC1(&uld_mutex);
	FUNC0(&adap->list_node, &adapter_list);
	for (i = 0; i < CXGB4_ULD_MAX; i++)
		if (ulds[i].add)
			FUNC3(adap, i);
	FUNC2(&uld_mutex);
}