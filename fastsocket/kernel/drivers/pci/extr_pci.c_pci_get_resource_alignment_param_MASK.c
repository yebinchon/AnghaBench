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
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  resource_alignment_lock ; 
 char* resource_alignment_param ; 
 size_t FUNC0 (char*,size_t,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

ssize_t FUNC3(char *buf, size_t size)
{
	size_t count;
	FUNC1(&resource_alignment_lock);
	count = FUNC0(buf, size, "%s", resource_alignment_param);
	FUNC2(&resource_alignment_lock);
	return count;
}