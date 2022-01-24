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
struct TYPE_2__ {scalar_t__ timer_divisor_2; scalar_t__ timer_divisor_1; int /*<<< orphan*/  lcr_io_base; } ;

/* Variables and functions */
 TYPE_1__* dev_private ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int,int,int,int) ; 
 int /*<<< orphan*/  software ; 

__attribute__((used)) static int FUNC5(struct comedi_device *dev)
{
	/*  Set trigger source to software */

	FUNC4(dev_private->lcr_io_base, true, true, true,
				  true, false);

	FUNC3(dev, software);
	FUNC1(dev, false);
	FUNC0(dev, false);

	/*  Reset 8254 chip */

	dev_private->timer_divisor_1 = 0;
	dev_private->timer_divisor_2 = 0;

	FUNC2(dev);

	return 0;
}