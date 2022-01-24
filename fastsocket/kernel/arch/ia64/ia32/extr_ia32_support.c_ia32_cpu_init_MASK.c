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
typedef  int ulong ;

/* Variables and functions */
 int IA32_CR0 ; 
 scalar_t__ IA32_CR4 ; 
 int /*<<< orphan*/  _IA64_REG_AR_CFLAG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 

void
FUNC1 (void)
{
	/* initialize global ia32 state - CR0 and CR4 */
	FUNC0(_IA64_REG_AR_CFLAG, (((ulong) IA32_CR4 << 32) | IA32_CR0));
}