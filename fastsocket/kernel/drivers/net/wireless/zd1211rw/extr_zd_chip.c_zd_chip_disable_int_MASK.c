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
struct zd_chip {int /*<<< orphan*/  mutex; int /*<<< orphan*/  usb; } ;
struct TYPE_2__ {int /*<<< orphan*/  process_intr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (struct zd_chip*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct zd_chip *chip)
{
	FUNC1(&chip->mutex);
	FUNC4(&chip->usb);
	FUNC2(&chip->mutex);

	/* cancel pending interrupt work */
	FUNC0(&FUNC3(chip)->process_intr);
}