#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct work_struct {int dummy; } ;
typedef  TYPE_1__* i2ChanStrPtr ;
struct TYPE_5__ {scalar_t__ Ibuf_stuff; scalar_t__ Ibuf_strip; int /*<<< orphan*/  Ibuf_spinlock; int /*<<< orphan*/  throttled; int /*<<< orphan*/ * pTTY; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHANN ; 
 int /*<<< orphan*/  ITRC_INPUT ; 
 TYPE_1__* FUNC0 (struct work_struct*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  i2ChanStr ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  tqueue_input ; 

__attribute__((used)) static void FUNC6(struct work_struct *work)
{
	i2ChanStrPtr pCh = FUNC0(work, i2ChanStr, tqueue_input);
	unsigned long flags;

	FUNC3(CHANN, ITRC_INPUT, 21, 0 );

	// Data input
	if ( pCh->pTTY != NULL ) {
		FUNC4(&pCh->Ibuf_spinlock, flags);
		if (!pCh->throttled && (pCh->Ibuf_stuff != pCh->Ibuf_strip)) {
			FUNC5(&pCh->Ibuf_spinlock, flags);
			FUNC1( pCh );
		} else
			FUNC5(&pCh->Ibuf_spinlock, flags);
	} else {
		FUNC3(CHANN, ITRC_INPUT, 22, 0 );

		FUNC2( pCh );
	}
}