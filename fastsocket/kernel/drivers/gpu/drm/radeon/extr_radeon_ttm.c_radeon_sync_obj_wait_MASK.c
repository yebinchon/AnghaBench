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
struct radeon_fence {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct radeon_fence*,int) ; 

__attribute__((used)) static int FUNC1(void *sync_obj, bool lazy, bool interruptible)
{
	return FUNC0((struct radeon_fence *)sync_obj, interruptible);
}