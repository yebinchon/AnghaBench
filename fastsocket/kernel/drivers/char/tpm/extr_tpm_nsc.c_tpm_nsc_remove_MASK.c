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
struct TYPE_2__ {int /*<<< orphan*/  base; } ;
struct tpm_chip {int /*<<< orphan*/  dev; TYPE_1__ vendor; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct tpm_chip* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct device *dev)
{
	struct tpm_chip *chip = FUNC0(dev);
	if ( chip ) {
		FUNC1(chip->vendor.base, 2);
		FUNC2(chip->dev);
	}
}