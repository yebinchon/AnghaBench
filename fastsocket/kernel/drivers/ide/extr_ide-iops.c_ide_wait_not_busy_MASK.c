#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct TYPE_6__ {TYPE_1__* tp_ops; } ;
typedef  TYPE_2__ ide_hwif_t ;
struct TYPE_5__ {int (* read_status ) (TYPE_2__*) ;} ;

/* Variables and functions */
 int ATA_BUSY ; 
 int EBUSY ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

int FUNC4(ide_hwif_t *hwif, unsigned long timeout)
{
	u8 stat = 0;

	while (timeout--) {
		/*
		 * Turn this into a schedule() sleep once I'm sure
		 * about locking issues (2.5 work ?).
		 */
		FUNC0(1);
		stat = hwif->tp_ops->read_status(hwif);
		if ((stat & ATA_BUSY) == 0)
			return 0;
		/*
		 * Assume a value of 0xff means nothing is connected to
		 * the interface and it doesn't implement the pull-down
		 * resistor on D7.
		 */
		if (stat == 0xff)
			return -ENODEV;
		FUNC3();
		FUNC2();
	}
	return -EBUSY;
}