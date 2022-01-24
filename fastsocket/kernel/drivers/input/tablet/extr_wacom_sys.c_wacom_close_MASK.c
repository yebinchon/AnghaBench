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
struct wacom {TYPE_1__* intf; int /*<<< orphan*/  lock; scalar_t__ open; int /*<<< orphan*/  irq; } ;
struct input_dev {int dummy; } ;
struct TYPE_2__ {scalar_t__ needs_remote_wakeup; } ;

/* Variables and functions */
 struct wacom* FUNC0 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct input_dev *dev)
{
	struct wacom *wacom = FUNC0(dev);

	FUNC1(&wacom->lock);
	FUNC4(wacom->irq);
	wacom->open = 0;
	wacom->intf->needs_remote_wakeup = 0;
	FUNC2(&wacom->lock);

	FUNC3(wacom->intf);
}