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
 int RESOURCE_ALIGNMENT_PARAM_SIZE ; 
 int /*<<< orphan*/  resource_alignment_lock ; 
 char* resource_alignment_param ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,size_t) ; 

ssize_t FUNC3(const char *buf, size_t count)
{
	if (count > RESOURCE_ALIGNMENT_PARAM_SIZE - 1)
		count = RESOURCE_ALIGNMENT_PARAM_SIZE - 1;
	FUNC0(&resource_alignment_lock);
	FUNC2(resource_alignment_param, buf, count);
	resource_alignment_param[count] = '\0';
	FUNC1(&resource_alignment_lock);
	return count;
}