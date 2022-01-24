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
struct init_table {scalar_t__ addr; int /*<<< orphan*/  data; } ;
typedef  int /*<<< orphan*/  adapter_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ INITBLOCK_SLEEP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(adapter_t *adapter, struct init_table *ib, int len)
{
	int i;

	for (i = 0; i < len; i++) {
		if (ib[i].addr == INITBLOCK_SLEEP) {
			FUNC1( ib[i].data );
			FUNC0("sleep %d us\n",ib[i].data);
		} else
			FUNC2( adapter, ib[i].addr, ib[i].data );
	}
}