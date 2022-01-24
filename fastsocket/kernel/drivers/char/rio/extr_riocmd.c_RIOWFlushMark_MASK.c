#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct Port {int /*<<< orphan*/  portSem; int /*<<< orphan*/  MagicFlags; int /*<<< orphan*/  WflushFlag; } ;
struct CmdBlk {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAGIC_FLUSH ; 
 int FUNC0 (unsigned long,struct CmdBlk*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC3(unsigned long iPortP, struct CmdBlk *CmdBlkP)
{
	struct Port *PortP = (struct Port *) iPortP;
	unsigned long flags;

	FUNC1(&PortP->portSem, flags);
	PortP->WflushFlag++;
	PortP->MagicFlags |= MAGIC_FLUSH;
	FUNC2(&PortP->portSem, flags);
	return FUNC0(iPortP, CmdBlkP);
}