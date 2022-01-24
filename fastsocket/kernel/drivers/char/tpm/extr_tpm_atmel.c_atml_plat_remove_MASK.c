#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  iobase; int /*<<< orphan*/  region_size; int /*<<< orphan*/  base; scalar_t__ have_region; } ;
struct tpm_chip {int /*<<< orphan*/  dev; TYPE_1__ vendor; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tpm_chip* FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_2__* pdev ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(void)
{
	struct tpm_chip *chip = FUNC2(&pdev->dev);

	if (chip) {
		if (chip->vendor.have_region)
			FUNC1(chip->vendor.base,
					     chip->vendor.region_size);
		FUNC0(chip->vendor.iobase);
		FUNC4(chip->dev);
		FUNC3(pdev);
	}
}