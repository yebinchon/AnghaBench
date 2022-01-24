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
struct tps_key_entry {int keycode; } ;
struct input_dev {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 struct tps_key_entry* FUNC0 (int) ; 

__attribute__((used)) static int FUNC1(struct input_dev *dev, int scancode, int *keycode)
{
	struct tps_key_entry *key = FUNC0(scancode);

	if (!key)
		return -EINVAL;

	*keycode = key->keycode;
	return 0;
}