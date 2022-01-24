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
 unsigned char CMD_ClearIMB2 ; 
 int EINVAL ; 
 scalar_t__ IMB2 ; 
 int /*<<< orphan*/  OMBCMD_RETRY ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_device*,char*) ; 
 unsigned char FUNC1 (scalar_t__) ; 
 int FUNC2 (struct comedi_device*) ; 
 int FUNC3 (struct comedi_device*,unsigned char*,unsigned char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct comedi_device *dev,
			      unsigned char *omb, unsigned char *imb)
{
	if (omb[2] == CMD_ClearIMB2) {
		FUNC0(dev,
			     "bug! this function should not be used for CMD_ClearIMB2 command");
		return -EINVAL;
	}
	if (FUNC1(dev->iobase + IMB2) == omb[2]) {
		int retval;
		retval = FUNC2(dev);
		if (retval < 0)
			return retval;
	}
	return FUNC3(dev, omb, imb, OMBCMD_RETRY);
}