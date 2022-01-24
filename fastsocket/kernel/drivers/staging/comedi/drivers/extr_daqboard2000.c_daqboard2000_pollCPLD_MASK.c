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
struct comedi_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ daq; } ;

/* Variables and functions */
 TYPE_1__* devpriv ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(struct comedi_device *dev, int mask)
{
	int result = 0;
	int i;
	int cpld;

	/* timeout after 50 tries -> 5ms */
	for (i = 0; i < 50; i++) {
		cpld = FUNC0(devpriv->daq + 0x1000);
		if ((cpld & mask) == mask) {
			result = 1;
			break;
		}
		FUNC1(100);
	}
	FUNC1(5);
	return result;
}