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
typedef  TYPE_1__* i2eBordStrPtr ;
struct TYPE_5__ {scalar_t__ i2eUsingIrq; } ;

/* Variables and functions */
 int /*<<< orphan*/  bh_counter ; 
 TYPE_1__* FUNC0 (struct work_struct*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  i2eBordStr ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  tqueue_interrupt ; 

__attribute__((used)) static void
FUNC3(struct work_struct *work)
{
	i2eBordStrPtr pB = FUNC0(work, i2eBordStr, tqueue_interrupt);
//	pB better well be set or we have a problem!  We can only get
//	here from the IMMEDIATE queue.  Here, we process the boards.
//	Checking pB doesn't cost much and it saves us from the sanity checkers.

	bh_counter++; 

	if ( pB ) {
		FUNC1( pB );
		if( pB->i2eUsingIrq ) {
//			Re-enable his interrupts
			FUNC2(pB);
		}
	}
}