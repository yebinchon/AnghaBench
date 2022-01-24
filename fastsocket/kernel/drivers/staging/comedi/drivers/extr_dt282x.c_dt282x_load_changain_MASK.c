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
struct comedi_device {scalar_t__ iobase; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (unsigned int) ; 
 scalar_t__ DT2821_CHANCSR ; 
 int DT2821_LLE ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 

__attribute__((used)) static void FUNC4(struct comedi_device *dev, int n,
				 unsigned int *chanlist)
{
	unsigned int i;
	unsigned int chan, range;

	FUNC2(DT2821_LLE | (n - 1), dev->iobase + DT2821_CHANCSR);
	for (i = 0; i < n; i++) {
		chan = FUNC0(chanlist[i]);
		range = FUNC1(chanlist[i]);
		FUNC3((range << 4) | (chan));
	}
	FUNC2(n - 1, dev->iobase + DT2821_CHANCSR);
}