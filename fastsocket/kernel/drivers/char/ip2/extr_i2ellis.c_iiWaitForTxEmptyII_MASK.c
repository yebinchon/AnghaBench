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
struct TYPE_6__ {int /*<<< orphan*/  i2ePointer; int /*<<< orphan*/  i2eStatus; } ;

/* Variables and functions */
 int /*<<< orphan*/  Dl_spinlock ; 
 int /*<<< orphan*/  I2EE_GOOD ; 
 int /*<<< orphan*/  I2EE_TXE_TIME ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  SEL_CMD_SH ; 
 int /*<<< orphan*/  SEL_CMD_UNSH ; 
 int /*<<< orphan*/  SEL_COMMAND ; 
 int ST_IN_EMPTY ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int
FUNC7(i2eBordStrPtr pB, int mSdelay)
{
	unsigned long	flags;
	int itemp;

	for (;;)
	{
		// This routine hinges on being able to see the "other" status register
		// (as seen by the local processor).  His incoming fifo is our outgoing
		// FIFO.
		//
		// By the nature of this routine, you would be using this as part of a
		// larger atomic context: i.e., you would use this routine to ensure the
		// fifo empty, then act on this information. Between these two halves, 
		// you will generally not want to service interrupts or in any way 
		// disrupt the assumptions implicit in the larger context.
		//
		// Even worse, however, this routine "shifts" the status register to 
		// point to the local status register which is not the usual situation.
		// Therefore for extra safety, we force the critical section to be
		// completely atomic, and pick up after ourselves before allowing any
		// interrupts of any kind.


		FUNC5(&Dl_spinlock, flags);
		FUNC4(SEL_COMMAND, pB->i2ePointer);
		FUNC4(SEL_CMD_SH, pB->i2ePointer);

		itemp = FUNC3(pB->i2eStatus);

		FUNC4(SEL_COMMAND, pB->i2ePointer);
		FUNC4(SEL_CMD_UNSH, pB->i2ePointer);

		if (itemp & ST_IN_EMPTY)
		{
			FUNC1(pB);
			FUNC6(&Dl_spinlock, flags);
			FUNC0(pB, I2EE_GOOD);
		}

		FUNC6(&Dl_spinlock, flags);

		if (mSdelay-- == 0)
			break;

		FUNC2(pB, 1);      /* 1 mS granularity on checking condition */
	}
	FUNC0(pB, I2EE_TXE_TIME);
}