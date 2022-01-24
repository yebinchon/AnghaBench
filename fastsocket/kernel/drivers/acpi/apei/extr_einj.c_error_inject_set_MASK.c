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
typedef  int /*<<< orphan*/  u64 ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  error_param1 ; 
 int /*<<< orphan*/  error_param2 ; 
 int /*<<< orphan*/  error_type ; 

__attribute__((used)) static int FUNC1(void *data, u64 val)
{
	if (!error_type)
		return -EINVAL;

	return FUNC0(error_type, error_param1, error_param2);
}