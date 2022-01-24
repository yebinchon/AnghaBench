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
struct si470x_device {int users; int /*<<< orphan*/  lock; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct si470x_device*) ; 
 struct si470x_device* FUNC3 (struct file*) ; 

__attribute__((used)) static int FUNC4(struct file *file)
{
	struct si470x_device *radio = FUNC3(file);
	int retval = 0;

	FUNC0(&radio->lock);
	radio->users++;

	if (radio->users == 1)
		/* start radio */
		retval = FUNC2(radio);

	FUNC1(&radio->lock);

	return retval;
}