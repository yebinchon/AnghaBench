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
struct stmp3xxx_dma_descriptor {int /*<<< orphan*/ * next_descr; int /*<<< orphan*/ * virtual_buf_ptr; scalar_t__ handle; int /*<<< orphan*/ * command; } ;
struct TYPE_2__ {int /*<<< orphan*/  pool; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_1__* channels ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 

int FUNC4(int channel,
			      struct stmp3xxx_dma_descriptor *descriptor)
{
	int err = 0;

	if (!FUNC1(channel)) {
		err = -ENODEV;
		goto out;
	}
	if (!FUNC0(channel)) {
		err = -EBUSY;
		goto out;
	}

	/* Return the command memory to the pool */
	FUNC3(channels[channel].pool, descriptor->command,
		      descriptor->handle);

	/* Initialise descriptor so we're not tempted to use it */
	descriptor->command = NULL;
	descriptor->handle = 0;
	descriptor->virtual_buf_ptr = NULL;
	descriptor->next_descr = NULL;

	FUNC2(err);
out:
	return err;
}