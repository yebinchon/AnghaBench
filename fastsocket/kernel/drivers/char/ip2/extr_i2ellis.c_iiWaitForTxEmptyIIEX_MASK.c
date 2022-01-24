#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* i2eBordStrPtr ;
struct TYPE_6__ {int /*<<< orphan*/  i2eStatus; } ;

/* Variables and functions */
 int /*<<< orphan*/  Dl_spinlock ; 
 int /*<<< orphan*/  I2EE_GOOD ; 
 int /*<<< orphan*/  I2EE_TXE_TIME ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int STE_OUT_MT ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int
FUNC6(i2eBordStrPtr pB, int mSdelay)
{
	unsigned long	flags;

	for (;;)
	{
		// By the nature of this routine, you would be using this as part of a
		// larger atomic context: i.e., you would use this routine to ensure the
		// fifo empty, then act on this information. Between these two halves,
		// you will generally not want to service interrupts or in any way
		// disrupt the assumptions implicit in the larger context.

		FUNC4(&Dl_spinlock, flags);

		if (FUNC3(pB->i2eStatus) & STE_OUT_MT) {
			FUNC1(pB);
			FUNC5(&Dl_spinlock, flags);
			FUNC0(pB, I2EE_GOOD);
		}
		FUNC5(&Dl_spinlock, flags);

		if (mSdelay-- == 0)
			break;

		FUNC2(pB, 1);      // 1 mS granularity on checking condition
	}
	FUNC0(pB, I2EE_TXE_TIME);
}