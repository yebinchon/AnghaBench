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
struct mddev {TYPE_1__* bitmap; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  behind_writes_used; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,...) ; 

__attribute__((used)) static ssize_t
FUNC1(struct mddev *mddev, char *page)
{
	if (mddev->bitmap == NULL)
		return FUNC0(page, "0\n");
	return FUNC0(page, "%lu\n",
		       mddev->bitmap->behind_writes_used);
}