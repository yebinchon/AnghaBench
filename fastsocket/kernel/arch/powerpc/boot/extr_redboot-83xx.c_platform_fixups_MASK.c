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
struct TYPE_2__ {int bi_busfreq; int /*<<< orphan*/  bi_intfreq; int /*<<< orphan*/  bi_enetaddr; int /*<<< orphan*/  bi_memsize; int /*<<< orphan*/  bi_memstart; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 TYPE_1__ bd ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (void*,char*,int*,int) ; 

__attribute__((used)) static void FUNC7(void)
{
	void *node;

	FUNC3(bd.bi_memstart, bd.bi_memsize);
	FUNC2(bd.bi_enetaddr);
	FUNC1(bd.bi_intfreq, bd.bi_busfreq / 16, bd.bi_busfreq);

	node = FUNC4("/soc/cpm/brg");
	if (node) {
		FUNC5("BRG clock-frequency <- 0x%x (%dMHz)\r\n",
		       bd.bi_busfreq, FUNC0(bd.bi_busfreq));
		FUNC6(node, "clock-frequency",  &bd.bi_busfreq, 4);
	}

}