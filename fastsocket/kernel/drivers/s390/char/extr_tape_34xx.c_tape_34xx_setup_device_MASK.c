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
struct tape_device {struct list_head* discdata; } ;
struct list_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC2 (struct list_head*) ; 
 struct list_head* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct tape_device*) ; 
 int FUNC5 (struct tape_device*) ; 

__attribute__((used)) static int
FUNC6(struct tape_device * device)
{
	int			rc;
	struct list_head *	discdata;

	FUNC0(6, "34xx device setup\n");
	if ((rc = FUNC5(device)) == 0) {
		if ((rc = FUNC4(device)) != 0) {
			FUNC1(3, "34xx medium sense returned %d\n", rc);
		}
	}
	discdata = FUNC3(sizeof(struct list_head), GFP_KERNEL);
	if (discdata) {
			FUNC2(discdata);
			device->discdata = discdata;
	}

	return rc;
}