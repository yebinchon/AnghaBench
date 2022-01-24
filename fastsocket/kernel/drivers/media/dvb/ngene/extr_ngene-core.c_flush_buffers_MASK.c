#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct ngene_channel {int /*<<< orphan*/  state_lock; TYPE_3__* nextBuffer; } ;
struct TYPE_4__ {int Flags; } ;
struct TYPE_5__ {TYPE_1__ SR; } ;
struct TYPE_6__ {TYPE_2__ ngeneBuffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct ngene_channel *chan)
{
	u8 val;

	do {
		FUNC0(1);
		FUNC1(&chan->state_lock);
		val = chan->nextBuffer->ngeneBuffer.SR.Flags & 0x80;
		FUNC2(&chan->state_lock);
	} while (val);
}