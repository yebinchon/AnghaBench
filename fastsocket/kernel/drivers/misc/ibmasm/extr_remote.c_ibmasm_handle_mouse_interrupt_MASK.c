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
struct TYPE_2__ {int /*<<< orphan*/  keybd_dev; int /*<<< orphan*/  mouse_dev; } ;
struct service_processor {TYPE_1__ remote; } ;
struct remote_input {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ INPUT_TYPE_KEYBOARD ; 
 scalar_t__ INPUT_TYPE_MOUSE ; 
 unsigned long FUNC0 (struct service_processor*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct service_processor*,unsigned long) ; 
 unsigned long FUNC2 (struct service_processor*) ; 
 unsigned long FUNC3 (struct service_processor*) ; 
 int /*<<< orphan*/  FUNC4 (struct remote_input*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct remote_input*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct remote_input*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct remote_input*) ; 

void FUNC8(struct service_processor *sp)
{
	unsigned long reader;
	unsigned long writer;
	struct remote_input input;

	reader = FUNC2(sp);
	writer = FUNC3(sp);

	while (reader != writer) {
		FUNC4(&input, FUNC1(sp, reader),
				sizeof(struct remote_input));

		FUNC5(&input);
		if (input.type == INPUT_TYPE_MOUSE) {
			FUNC7(sp->remote.mouse_dev, &input);
		} else if (input.type == INPUT_TYPE_KEYBOARD) {
			FUNC6(sp->remote.keybd_dev, &input);
		} else
			break;

		reader = FUNC0(sp, reader);
		writer = FUNC3(sp);
	}
}