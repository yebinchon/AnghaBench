#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__* driver; } ;
struct expansion_card {TYPE_2__ dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EBUSY ; 
 int ECARD_NUM_RESOURCES ; 
 scalar_t__ FUNC0 (struct expansion_card*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct expansion_card*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct expansion_card*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5(struct expansion_card *ec)
{
	int i, err = 0;

	for (i = 0; i < ECARD_NUM_RESOURCES; i++) {
		if (FUNC0(ec, i) &&
		    !FUNC4(FUNC2(ec, i),
					FUNC1(ec, i),
					ec->dev.driver->name)) {
			err = -EBUSY;
			break;
		}
	}

	if (err) {
		while (i--)
			if (FUNC0(ec, i))
				FUNC3(FUNC2(ec, i),
						   FUNC1(ec, i));
	}
	return err;
}