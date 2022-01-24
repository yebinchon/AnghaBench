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
struct rc_dev {int (* open ) (struct rc_dev*) ;} ;
struct input_dev {int dummy; } ;

/* Variables and functions */
 struct rc_dev* FUNC0 (struct input_dev*) ; 
 int FUNC1 (struct rc_dev*) ; 

__attribute__((used)) static int FUNC2(struct input_dev *idev)
{
	struct rc_dev *rdev = FUNC0(idev);

	return rdev->open(rdev);
}