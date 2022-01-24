#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  i2DataHeader ;
typedef  TYPE_1__* i2ChanStrPtr ;
struct TYPE_4__ {int Obuf_strip; int Obuf_stuff; int /*<<< orphan*/  Obuf_spinlock; } ;

/* Variables and functions */
 scalar_t__ OBUF_SIZE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int
FUNC3(i2ChanStrPtr pCh)
{
	int amountToMove;
	unsigned long flags;

	// Ensure channel structure seems real
	if ( !FUNC0 ( pCh ) ) {
		return -1;
	}
	FUNC1(&pCh->Obuf_spinlock, flags);
	amountToMove = pCh->Obuf_strip - pCh->Obuf_stuff - 1;
	FUNC2(&pCh->Obuf_spinlock, flags);

	if (amountToMove < 0) {
		amountToMove += OBUF_SIZE;
	}
	// If this is negative, we will discover later
	amountToMove -= sizeof(i2DataHeader);

	return (amountToMove < 0) ? 0 : amountToMove;
}