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
 int /*<<< orphan*/  ADQ12B_SIZE ; 
 int /*<<< orphan*/  devpriv ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct comedi_device *dev)
{
	if (dev->iobase)
		FUNC2(dev->iobase, ADQ12B_SIZE);

	FUNC0(devpriv);

	FUNC1("comedi%d: adq12b: removed\n", dev->minor);

	return 0;
}