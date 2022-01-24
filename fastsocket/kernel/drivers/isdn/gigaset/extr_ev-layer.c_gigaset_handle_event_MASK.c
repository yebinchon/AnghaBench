#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct cardstate {TYPE_2__* inbuf; TYPE_1__* ops; } ;
struct TYPE_4__ {scalar_t__ head; scalar_t__ tail; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* handle_input ) (TYPE_2__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_INTR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct cardstate*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

void FUNC3(unsigned long data)
{
	struct cardstate *cs = (struct cardstate *) data;

	/* handle incoming data on control/common channel */
	if (cs->inbuf->head != cs->inbuf->tail) {
		FUNC0(DEBUG_INTR, "processing new data");
		cs->ops->handle_input(cs->inbuf);
	}

	FUNC1(cs);
}