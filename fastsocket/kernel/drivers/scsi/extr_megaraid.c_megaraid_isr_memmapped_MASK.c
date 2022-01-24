#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_13__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  quiescent; TYPE_2__* mbox; int /*<<< orphan*/  pend_cmds; } ;
typedef  TYPE_3__ adapter_t ;
struct TYPE_11__ {int numstatus; int status; scalar_t__ completed; } ;
struct TYPE_12__ {TYPE_1__ m_in; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int MAX_FIRMWARE_STATUS ; 
 int FUNC1 (TYPE_3__*) ; 
 int FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (int*,void*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static irqreturn_t
FUNC14(int irq, void *devp)
{
	adapter_t	*adapter = devp;
	unsigned long	flags;
	u8	status;
	u32	dword = 0;
	u8	nstatus;
	u8	completed[MAX_FIRMWARE_STATUS];
	int	handled = 0;


	/*
	 * loop till F/W has more commands for us to complete.
	 */
	FUNC12(&adapter->lock, flags);

	do {
		/* Check if a valid interrupt is pending */
		dword = FUNC2(adapter);
		if(dword != 0x10001234) {
			/*
			 * No more pending commands
			 */
			goto out_unlock;
		}
		FUNC4(adapter, 0x10001234);

		while((nstatus = (volatile u8)adapter->mbox->m_in.numstatus)
				== 0xFF) {
			FUNC7();
		}
		adapter->mbox->m_in.numstatus = 0xFF;

		status = adapter->mbox->m_in.status;

		/*
		 * decrement the pending queue counter
		 */
		FUNC6(nstatus, &adapter->pend_cmds);

		FUNC11(completed, (void *)adapter->mbox->m_in.completed, 
				nstatus);

		/* Acknowledge interrupt */
		FUNC3(adapter, 0x2);

		handled = 1;

		while( FUNC1(adapter) & 0x02 )
			FUNC7();

		FUNC8(adapter, completed, nstatus, status);

		FUNC9(adapter);

		/* Loop through any pending requests */
		if(FUNC5(&adapter->quiescent) == 0) {
			FUNC10(adapter);
		}

	} while(1);

 out_unlock:

	FUNC13(&adapter->lock, flags);

	return FUNC0(handled);
}