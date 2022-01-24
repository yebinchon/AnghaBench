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

/* Variables and functions */
 unsigned long long EFER_NX ; 
 int /*<<< orphan*/  MSR_EFER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned long long*) ; 

__attribute__((used)) static int FUNC1(void)
{
	unsigned long long efer = 0;

	FUNC0(MSR_EFER, &efer);
	return efer & EFER_NX;
}