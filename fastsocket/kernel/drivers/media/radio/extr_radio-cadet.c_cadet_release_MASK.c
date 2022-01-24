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
struct file {int dummy; } ;
struct cadet {scalar_t__ users; scalar_t__ rdsstat; int /*<<< orphan*/  readtimer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct cadet* FUNC1 (struct file*) ; 

__attribute__((used)) static int FUNC2(struct file *file)
{
	struct cadet *dev = FUNC1(file);

	dev->users--;
	if (0 == dev->users) {
		FUNC0(&dev->readtimer);
		dev->rdsstat = 0;
	}
	return 0;
}