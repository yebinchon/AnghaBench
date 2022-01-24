#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  maddr; } ;
typedef  TYPE_1__ xmaddr_t ;
typedef  int /*<<< orphan*/  u64 ;
struct desc_struct {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
#define  DESC_LDT 129 
#define  DESC_TSS 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ FUNC2 (struct desc_struct*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void FUNC6(struct desc_struct *dt, int entry,
				const void *desc, int type)
{
	FUNC3();

	switch (type) {
	case DESC_LDT:
	case DESC_TSS:
		/* ignore */
		break;

	default: {
		xmaddr_t maddr = FUNC2(&dt[entry]);

		FUNC5();
		if (FUNC1(maddr.maddr, *(u64 *)desc))
			FUNC0();
	}

	}

	FUNC4();
}