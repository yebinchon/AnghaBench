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
struct mddev {scalar_t__ reshape_position; } ;
typedef  int ssize_t ;

/* Variables and functions */
 scalar_t__ MaxSector ; 
 int FUNC0 (char*,char*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 

__attribute__((used)) static ssize_t
FUNC2(struct mddev *mddev, char *page)
{
	if (mddev->reshape_position != MaxSector)
		return FUNC0(page, "%llu\n",
			       (unsigned long long)mddev->reshape_position);
	FUNC1(page, "none\n");
	return 5;
}