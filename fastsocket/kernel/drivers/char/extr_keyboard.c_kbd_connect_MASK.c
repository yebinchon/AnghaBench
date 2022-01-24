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
struct input_handler {int dummy; } ;
struct input_handle {char* name; struct input_handler* handler; struct input_dev* dev; } ;
struct input_device_id {int dummy; } ;
struct input_dev {int /*<<< orphan*/  evbit; int /*<<< orphan*/  keybit; } ;

/* Variables and functions */
 int BTN_MISC ; 
 int ENODEV ; 
 int ENOMEM ; 
 int EV_SND ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int KEY_RESERVED ; 
 int FUNC0 (struct input_handle*) ; 
 int FUNC1 (struct input_handle*) ; 
 int /*<<< orphan*/  FUNC2 (struct input_handle*) ; 
 int /*<<< orphan*/  FUNC3 (struct input_handle*) ; 
 struct input_handle* FUNC4 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct input_handler *handler, struct input_dev *dev,
			const struct input_device_id *id)
{
	struct input_handle *handle;
	int error;
	int i;

	for (i = KEY_RESERVED; i < BTN_MISC; i++)
		if (FUNC5(i, dev->keybit))
			break;

	if (i == BTN_MISC && !FUNC5(EV_SND, dev->evbit))
		return -ENODEV;

	handle = FUNC4(sizeof(struct input_handle), GFP_KERNEL);
	if (!handle)
		return -ENOMEM;

	handle->dev = dev;
	handle->handler = handler;
	handle->name = "kbd";

	error = FUNC1(handle);
	if (error)
		goto err_free_handle;

	error = FUNC0(handle);
	if (error)
		goto err_unregister_handle;

	return 0;

 err_unregister_handle:
	FUNC2(handle);
 err_free_handle:
	FUNC3(handle);
	return error;
}