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
struct tape_request {scalar_t__ op; int /*<<< orphan*/  rescnt; } ;
struct tape_device {int dummy; } ;
struct TYPE_3__ {int dstat; } ;
struct TYPE_4__ {TYPE_1__ cmd; } ;
struct irb {TYPE_2__ scsw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int DEV_STAT_ATTENTION ; 
 int DEV_STAT_CHN_END ; 
 int DEV_STAT_DEV_END ; 
 int DEV_STAT_UNIT_CHECK ; 
 int DEV_STAT_UNIT_EXCEP ; 
 int /*<<< orphan*/  ENOSPC ; 
 int TAPE_IO_PENDING ; 
 int TAPE_IO_STOP ; 
 scalar_t__ TO_BSB ; 
 scalar_t__ TO_FSB ; 
 scalar_t__ TO_WRI ; 
 int FUNC1 (struct tape_device*,struct tape_request*) ; 
 int FUNC2 (struct tape_device*,struct tape_request*,struct irb*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct tape_device*,struct tape_request*,struct irb*) ; 
 int FUNC4 (struct tape_device*,struct irb*) ; 
 int /*<<< orphan*/  FUNC5 (struct tape_device*,struct tape_request*,struct irb*) ; 

__attribute__((used)) static int
FUNC6(struct tape_device *device, struct tape_request *request,
	      struct irb *irb)
{
	if (request == NULL)
		return FUNC4(device, irb);

	if ((irb->scsw.cmd.dstat & DEV_STAT_UNIT_EXCEP) &&
	    (irb->scsw.cmd.dstat & DEV_STAT_DEV_END) &&
	    (request->op == TO_WRI)) {
		/* Write at end of volume */
		FUNC0(2, "End of volume\n");
		return FUNC2(device, request, irb, -ENOSPC);
	}

	if (irb->scsw.cmd.dstat & DEV_STAT_UNIT_CHECK)
		return FUNC3(device, request, irb);

	if (irb->scsw.cmd.dstat & DEV_STAT_DEV_END) {
		if (irb->scsw.cmd.dstat == DEV_STAT_UNIT_EXCEP) {
			if (request->op == TO_FSB || request->op == TO_BSB)
				request->rescnt++;
			else
				FUNC0(5, "Unit Exception!\n");
		}

		return FUNC1(device, request);
	}

	if (irb->scsw.cmd.dstat & DEV_STAT_CHN_END) {
		FUNC0(2, "cannel end\n");
		return TAPE_IO_PENDING;
	}

	if (irb->scsw.cmd.dstat & DEV_STAT_ATTENTION) {
		FUNC0(2, "Unit Attention when busy..\n");
		return TAPE_IO_PENDING;
	}

	FUNC0(6, "xunknownirq\n");
	FUNC5(device, request, irb);
	return TAPE_IO_STOP;
}