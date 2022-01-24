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
struct comedi_device {int /*<<< orphan*/  minor; scalar_t__ iobase; } ;

/* Variables and functions */
 int /*<<< orphan*/  FL512_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct comedi_device *dev)
{
	if (dev->iobase)
		FUNC1(dev->iobase, FL512_SIZE);
	FUNC0("comedi%d: fl512: dummy i detach\n", dev->minor);
	return 0;
}