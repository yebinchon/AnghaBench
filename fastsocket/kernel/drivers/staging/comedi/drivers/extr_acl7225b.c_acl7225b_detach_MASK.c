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
struct comedi_device {scalar_t__ iobase; int /*<<< orphan*/  minor; } ;
struct TYPE_2__ {int /*<<< orphan*/  io_range; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_1__* this_board ; 

__attribute__((used)) static int FUNC2(struct comedi_device *dev)
{
	FUNC0("comedi%d: acl7225b: remove\n", dev->minor);

	if (dev->iobase)
		FUNC1(dev->iobase, this_board->io_range);

	return 0;
}