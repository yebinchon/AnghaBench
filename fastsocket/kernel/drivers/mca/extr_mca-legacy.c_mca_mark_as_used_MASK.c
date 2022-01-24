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
struct mca_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mca_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct mca_device*,int) ; 
 struct mca_device* FUNC2 (int) ; 

int FUNC3(int slot)
{
	struct mca_device *mca_dev = FUNC2(slot);

	if(!mca_dev)
		/* FIXME: this is actually a severe error */
		return 1;

	if(FUNC0(mca_dev))
		return 1;

	FUNC1(mca_dev, 1);

	return 0;
}