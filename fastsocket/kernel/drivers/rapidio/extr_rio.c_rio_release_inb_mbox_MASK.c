#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct rio_mport {TYPE_1__* inb_msg; } ;
struct TYPE_2__ {int /*<<< orphan*/  res; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rio_mport*,int) ; 

int FUNC2(struct rio_mport *mport, int mbox)
{
	FUNC1(mport, mbox);

	/* Release the mailbox resource */
	return FUNC0(mport->inb_msg[mbox].res);
}