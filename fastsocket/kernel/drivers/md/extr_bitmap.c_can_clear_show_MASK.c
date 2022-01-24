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
typedef  int ssize_t ;
struct TYPE_2__ {scalar_t__ need_sync; } ;

/* Variables and functions */
 int FUNC0 (char*,char*,...) ; 

__attribute__((used)) static ssize_t FUNC1(struct mddev *mddev, char *page)
{
	int len;
	if (mddev->bitmap)
		len = FUNC0(page, "%s\n", (mddev->bitmap->need_sync ?
					     "false" : "true"));
	else
		len = FUNC0(page, "\n");
	return len;
}