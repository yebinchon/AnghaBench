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
struct CmdBlk {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct CmdBlk* FUNC0 (int,int /*<<< orphan*/ ) ; 

struct CmdBlk *FUNC1(void)
{
	struct CmdBlk *CmdBlkP;

	CmdBlkP = FUNC0(sizeof(struct CmdBlk), GFP_ATOMIC);
	return CmdBlkP;
}