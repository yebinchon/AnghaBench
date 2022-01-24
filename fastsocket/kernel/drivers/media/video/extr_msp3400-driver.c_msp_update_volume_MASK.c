#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct msp_state {TYPE_4__* volume; TYPE_3__* muted; } ;
struct TYPE_7__ {int /*<<< orphan*/  val; } ;
struct TYPE_10__ {TYPE_1__ cur; int /*<<< orphan*/  val; } ;
struct TYPE_8__ {int /*<<< orphan*/  val; } ;
struct TYPE_9__ {TYPE_2__ cur; int /*<<< orphan*/  val; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 

void FUNC3(struct msp_state *state)
{
	/* Force an update of the volume/mute cluster */
	FUNC1(state->volume);
	state->volume->val = state->volume->cur.val;
	state->muted->val = state->muted->cur.val;
	FUNC0(state->volume);
	FUNC2(state->volume);
}