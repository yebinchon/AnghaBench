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
struct comedi_device {scalar_t__ iobase; scalar_t__ irq; int /*<<< orphan*/  minor; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCMAD_SIZE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct comedi_device *dev)
{
	FUNC1("comedi%d: pcmad: remove\n", dev->minor);

	if (dev->irq) {
		FUNC0(dev->irq, dev);
	}
	if (dev->iobase)
		FUNC2(dev->iobase, PCMAD_SIZE);

	return 0;
}