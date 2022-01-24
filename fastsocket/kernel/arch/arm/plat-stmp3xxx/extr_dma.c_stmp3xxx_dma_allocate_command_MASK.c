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
struct stmp3xxx_dma_user {int /*<<< orphan*/  pool; } ;
struct stmp3xxx_dma_descriptor {int /*<<< orphan*/  command; int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct stmp3xxx_dma_user* channels ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pool_item_size ; 

int FUNC5(int channel,
				  struct stmp3xxx_dma_descriptor *descriptor)
{
	struct stmp3xxx_dma_user *user = channels + channel;
	int err = 0;

	if (!FUNC1(channel)) {
		err = -ENODEV;
		goto out;
	}
	if (!FUNC0(channel)) {
		err = -EBUSY;
		goto out;
	}
	if (descriptor == NULL) {
		err = -EINVAL;
		goto out;
	}

	/* Allocate memory for a command from the buffer */
	descriptor->command =
	    FUNC3(user->pool, GFP_KERNEL, &descriptor->handle);

	/* Check it worked */
	if (!descriptor->command) {
		err = -ENOMEM;
		goto out;
	}

	FUNC4(descriptor->command, 0, pool_item_size);
out:
	FUNC2(err);
	return err;
}