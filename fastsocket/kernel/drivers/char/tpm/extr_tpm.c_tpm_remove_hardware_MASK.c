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
struct TYPE_2__ {int /*<<< orphan*/  attr_group; int /*<<< orphan*/  miscdev; } ;
struct tpm_chip {int /*<<< orphan*/  dev; int /*<<< orphan*/  bios_dir; TYPE_1__ vendor; int /*<<< orphan*/  list; } ;
struct device {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 struct tpm_chip* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  driver_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

void FUNC11(struct device *dev)
{
	struct tpm_chip *chip = FUNC1(dev);

	if (chip == NULL) {
		FUNC0(dev, "No device data found\n");
		return;
	}

	FUNC5(&driver_lock);
	FUNC2(&chip->list);
	FUNC6(&driver_lock);
	FUNC7();

	FUNC3(&chip->vendor.miscdev);
	FUNC8(&dev->kobj, chip->vendor.attr_group);
	FUNC10(&dev->kobj);
	FUNC9(chip->bios_dir);

	/* write it this way to be explicit (chip->dev == dev) */
	FUNC4(chip->dev);
}