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
struct mddev {scalar_t__ array_sectors; scalar_t__ external_size; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,...) ; 

__attribute__((used)) static ssize_t
FUNC1(struct mddev *mddev, char *page)
{
	if (mddev->external_size)
		return FUNC0(page, "%llu\n",
			       (unsigned long long)mddev->array_sectors/2);
	else
		return FUNC0(page, "default\n");
}