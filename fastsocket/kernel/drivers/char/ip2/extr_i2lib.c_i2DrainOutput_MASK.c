#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wait_queue_t ;
typedef  TYPE_1__* i2eBordStrPtr ;
typedef  TYPE_2__* i2ChanStrPtr ;
struct TYPE_12__ {scalar_t__ expires; } ;
struct TYPE_11__ {TYPE_4__ BookmarkTimer; int /*<<< orphan*/  pBookmarkWait; TYPE_1__* pMyBord; } ;
struct TYPE_10__ {int /*<<< orphan*/  (* i2eFatalTrap ) (TYPE_1__*) ;scalar_t__ i2eFatal; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHANN ; 
 int /*<<< orphan*/  CMD_BMARK_REQ ; 
 int /*<<< orphan*/  ITRC_DRAIN ; 
 int ITRC_ENTER ; 
 int ITRC_RETURN ; 
 int /*<<< orphan*/  PTYPE_INLINE ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  i2DrainWakeup ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,scalar_t__) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 scalar_t__ FUNC12 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void
FUNC13(i2ChanStrPtr pCh, int timeout)
{
	wait_queue_t wait;
	i2eBordStrPtr pB;

	FUNC4 (CHANN, ITRC_DRAIN, ITRC_ENTER, 1, pCh->BookmarkTimer.expires);

	pB = pCh->pMyBord;
	// If the board has gone fatal, return bad, 
	// and also hit the trap routine if it exists.
	if (pB->i2eFatal) {
		if (pB->i2eFatalTrap) {
			(*(pB)->i2eFatalTrap)(pB);
		}
		return;
	}
	if ((timeout > 0) && (pCh->BookmarkTimer.expires == 0 )) {
		// One per customer (channel)
		FUNC10(&pCh->BookmarkTimer, i2DrainWakeup,
				(unsigned long)pCh);

		FUNC4 (CHANN, ITRC_DRAIN, 1, 1, pCh->BookmarkTimer.expires );

		FUNC5(&pCh->BookmarkTimer, jiffies + timeout);
	}
	
	FUNC2( PTYPE_INLINE, pCh, -1, 1, CMD_BMARK_REQ );

	FUNC3(&wait, current);
	FUNC0(&(pCh->pBookmarkWait), &wait);
	FUNC9( TASK_INTERRUPTIBLE );

	FUNC8( pB );
	
	FUNC7();	// Now we take our interruptible sleep on

	// Clean up the queue
	FUNC9( TASK_RUNNING );
	FUNC6(&(pCh->pBookmarkWait), &wait);

	// if expires == 0 then timer poped, then do not need to del_timer
	if ((timeout > 0) && pCh->BookmarkTimer.expires && 
	                     FUNC12(jiffies, pCh->BookmarkTimer.expires)) {
		FUNC1( &(pCh->BookmarkTimer) );
		pCh->BookmarkTimer.expires = 0;

		FUNC4 (CHANN, ITRC_DRAIN, 3, 1, pCh->BookmarkTimer.expires );

	}
	FUNC4 (CHANN, ITRC_DRAIN, ITRC_RETURN, 1, pCh->BookmarkTimer.expires );
	return;
}