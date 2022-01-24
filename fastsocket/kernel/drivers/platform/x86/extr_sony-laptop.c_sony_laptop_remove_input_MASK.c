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
struct TYPE_2__ {int /*<<< orphan*/  fifo; int /*<<< orphan*/  wq; int /*<<< orphan*/ * jog_dev; int /*<<< orphan*/ * key_dev; int /*<<< orphan*/  users; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__ sony_laptop_input ; 

__attribute__((used)) static void FUNC5(void)
{
	/* cleanup only after the last user has gone */
	if (!FUNC0(&sony_laptop_input.users))
		return;

	/* flush workqueue first */
	FUNC2(sony_laptop_input.wq);

	/* destroy input devs */
	FUNC3(sony_laptop_input.key_dev);
	sony_laptop_input.key_dev = NULL;

	if (sony_laptop_input.jog_dev) {
		FUNC3(sony_laptop_input.jog_dev);
		sony_laptop_input.jog_dev = NULL;
	}

	FUNC1(sony_laptop_input.wq);
	FUNC4(sony_laptop_input.fifo);
}