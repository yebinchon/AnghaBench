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
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HDP_MEM_COHERENCY_FLUSH_CNTL ; 
 int /*<<< orphan*/  VM_INVALIDATE_REQUEST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 

void FUNC1(struct radeon_device *rdev)
{
	/* flush hdp cache */
	FUNC0(HDP_MEM_COHERENCY_FLUSH_CNTL, 0x1);

	/* bits 0-15 are the VM contexts0-15 */
	FUNC0(VM_INVALIDATE_REQUEST, 1);
}