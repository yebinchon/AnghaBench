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
 int ETIME ; 
 scalar_t__ IMB0 ; 
 scalar_t__ IMB1 ; 
 scalar_t__ IMB2 ; 
 scalar_t__ IMB3 ; 
 scalar_t__ OMB0 ; 
 scalar_t__ OMB1 ; 
 scalar_t__ OMB2 ; 
 scalar_t__ OMB3 ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_device*,char*) ; 
 unsigned char FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct comedi_device *dev,
					unsigned char *omb, unsigned char *imb,
					int repeats)
{
	int cnt, tout, ok = 0;

	for (cnt = 0; cnt < repeats; cnt++) {
		FUNC2(omb[0], dev->iobase + OMB0);
		FUNC2(omb[1], dev->iobase + OMB1);
		FUNC2(omb[2], dev->iobase + OMB2);
		FUNC2(omb[3], dev->iobase + OMB3);
		for (tout = 0; tout < 251; tout++) {
			imb[2] = FUNC1(dev->iobase + IMB2);
			if (imb[2] == omb[2]) {
				imb[0] = FUNC1(dev->iobase + IMB0);
				imb[1] = FUNC1(dev->iobase + IMB1);
				imb[3] = FUNC1(dev->iobase + IMB3);
				ok = 1;
				break;
			}
			FUNC3(1);
		}
		if (ok)
			return 0;
	}

	FUNC0(dev, "PCI-1760 mailbox request timeout!");
	return -ETIME;
}