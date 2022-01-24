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
typedef  int /*<<< orphan*/  ulong ;

/* Variables and functions */
 scalar_t__ CCM_UPCTL ; 
 scalar_t__ CRM_BASE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static unsigned long FUNC2(void)
{
	ulong mpctl = FUNC0(CRM_BASE + CCM_UPCTL);

	return FUNC1(mpctl, 24000000);
}