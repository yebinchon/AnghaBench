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
typedef  int u32 ;
typedef  int /*<<< orphan*/  adapter_t ;

/* Variables and functions */
 int /*<<< orphan*/  A_ELMER0_GPO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(adapter_t * adapter)
{
	u32 val;

	FUNC1(adapter, A_ELMER0_GPO, &val);
	val &= ~4;
	FUNC2(adapter, A_ELMER0_GPO, val);
	FUNC0(100);

	FUNC2(adapter, A_ELMER0_GPO, val | 4);
	FUNC0(1000);

	/* Now lets enable the Laser. Delay 100us */
	FUNC1(adapter, A_ELMER0_GPO, &val);
	val |= 0x8000;
	FUNC2(adapter, A_ELMER0_GPO, val);
	FUNC3(100);
	return 0;
}