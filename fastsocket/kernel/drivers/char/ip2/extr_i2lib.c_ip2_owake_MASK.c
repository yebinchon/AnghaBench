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
typedef  int /*<<< orphan*/  i2ChanStrPtr ;
struct TYPE_4__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  driver_data; } ;
typedef  TYPE_1__* PTTY ;

/* Variables and functions */
 int /*<<< orphan*/  CHANN ; 
 int /*<<< orphan*/  ITRC_SICMD ; 
 int TTY_DO_WRITE_WAKEUP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static void

FUNC2( PTTY tp)
{
	i2ChanStrPtr  pCh;

	if (tp == NULL) return;

	pCh = tp->driver_data;

	FUNC0 (CHANN, ITRC_SICMD, 10, 2, tp->flags,
			(1 << TTY_DO_WRITE_WAKEUP) );

	FUNC1(tp);
}