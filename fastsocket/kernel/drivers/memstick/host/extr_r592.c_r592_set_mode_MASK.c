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
struct r592_device {int parallel_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  R592_IO ; 
 int /*<<< orphan*/  R592_IO_MODE ; 
 int /*<<< orphan*/  R592_IO_MODE_PARALLEL ; 
 int /*<<< orphan*/  R592_IO_MODE_SERIAL ; 
 int R592_IO_SERIAL1 ; 
 int R592_IO_SERIAL2 ; 
 int /*<<< orphan*/  R592_POWER ; 
 int R592_POWER_20 ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct r592_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct r592_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct r592_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct r592_device *dev, bool parallel_mode)
{
	if (!parallel_mode) {
		FUNC0("switching to serial mode");

		/* Set serial mode */
		FUNC3(dev, R592_IO_MODE, R592_IO_MODE_SERIAL);

		FUNC1(dev, R592_POWER, R592_POWER_20);

	} else {
		FUNC0("switching to parallel mode");

		/* This setting should be set _before_ switch TPC */
		FUNC2(dev, R592_POWER, R592_POWER_20);

		FUNC1(dev, R592_IO,
			R592_IO_SERIAL1 | R592_IO_SERIAL2);

		/* Set the parallel mode now */
		FUNC3(dev, R592_IO_MODE, R592_IO_MODE_PARALLEL);
	}

	dev->parallel_mode = parallel_mode;
	return 0;
}