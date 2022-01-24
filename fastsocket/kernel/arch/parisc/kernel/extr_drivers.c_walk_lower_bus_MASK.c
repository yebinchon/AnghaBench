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
struct TYPE_2__ {scalar_t__ hw_type; } ;
struct parisc_device {int /*<<< orphan*/  dev; TYPE_1__ id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct parisc_device*) ; 
 int FLEX_MASK ; 
 scalar_t__ HPHW_IOA ; 
 scalar_t__ FUNC1 (struct parisc_device*) ; 
 unsigned long MAX_NATIVE_DEVICES ; 
 unsigned long NATIVE_DEVICE_OFFSET ; 
 int FUNC2 (struct parisc_device*) ; 
 int FUNC3 (struct parisc_device*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,unsigned long,int /*<<< orphan*/ *) ; 

void FUNC5(struct parisc_device *dev)
{
	unsigned long io_io_low, io_io_high;

	if (!FUNC0(dev) || FUNC1(dev))
		return;

	if (dev->id.hw_type == HPHW_IOA) {
		io_io_low = (unsigned long)(signed int)(FUNC3(dev) << 16);
		io_io_high = io_io_low + MAX_NATIVE_DEVICES * NATIVE_DEVICE_OFFSET;
	} else {
		io_io_low = (FUNC3(dev) + ~FLEX_MASK) & FLEX_MASK;
		io_io_high = (FUNC2(dev)+ ~FLEX_MASK) & FLEX_MASK;
	}

	FUNC4(io_io_low, io_io_high, &dev->dev);
}