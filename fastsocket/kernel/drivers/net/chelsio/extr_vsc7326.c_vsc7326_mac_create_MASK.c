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
typedef  int u32 ;
struct cmac {TYPE_1__* instance; int /*<<< orphan*/ * adapter; int /*<<< orphan*/ * ops; } ;
struct TYPE_2__ {int index; scalar_t__ ticks; } ;
typedef  TYPE_1__ cmac_instance ;
typedef  int /*<<< orphan*/  adapter_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int REG_LOCAL_STATUS ; 
 struct cmac* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  vsc7326_ops ; 

__attribute__((used)) static struct cmac *FUNC3(adapter_t *adapter, int index)
{
	struct cmac *mac;
	u32 val;
	int i;

	mac = FUNC0(sizeof(*mac) + sizeof(cmac_instance), GFP_KERNEL);
	if (!mac)
		return NULL;

	mac->ops = &vsc7326_ops;
	mac->instance = (cmac_instance *)(mac + 1);
	mac->adapter  = adapter;

	mac->instance->index = index;
	mac->instance->ticks = 0;

	i = 0;
	do {
		u32 vhi, vlo;

		vhi = vlo = 0;
		FUNC1(adapter, (REG_LOCAL_STATUS << 2) + 4, &vlo);
		FUNC2(1);
		FUNC1(adapter, REG_LOCAL_STATUS << 2, &vhi);
		FUNC2(5);
		val = (vhi << 16) | vlo;
	} while ((++i < 10000) && (val == 0xffffffff));

	return mac;
}