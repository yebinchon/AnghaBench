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
struct tea5764_device {int /*<<< orphan*/  mutex; int /*<<< orphan*/  users; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct tea5764_device* FUNC2 (struct file*) ; 

__attribute__((used)) static int FUNC3(struct file *file)
{
	struct tea5764_device *radio = FUNC2(file);

	if (!radio)
		return -ENODEV;
	FUNC0(&radio->mutex);
	radio->users--;
	FUNC1(&radio->mutex);
	return 0;
}