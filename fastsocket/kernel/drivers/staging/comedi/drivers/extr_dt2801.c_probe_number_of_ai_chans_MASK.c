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
struct comedi_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DT_C_READ_ADIM ; 
 int FUNC0 (struct comedi_device*,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*) ; 
 int FUNC2 (struct comedi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*,int) ; 

__attribute__((used)) static int FUNC4(struct comedi_device *dev)
{
	int n_chans;
	int stat;
	int data;

	for (n_chans = 0; n_chans < 16; n_chans++) {
		stat = FUNC2(dev, DT_C_READ_ADIM);
		FUNC3(dev, 0);
		FUNC3(dev, n_chans);
		stat = FUNC0(dev, &data);

		if (stat)
			break;
	}

	FUNC1(dev);
	FUNC1(dev);

	return n_chans;
}