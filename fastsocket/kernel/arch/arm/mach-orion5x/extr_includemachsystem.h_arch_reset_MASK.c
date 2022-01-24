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
 int /*<<< orphan*/  CPU_SOFT_RESET ; 
 int /*<<< orphan*/  RSTOUTn_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void FUNC1(char mode, const char *cmd)
{
	/*
	 * Enable and issue soft reset
	 */
	FUNC0(RSTOUTn_MASK, (1 << 2));
	FUNC0(CPU_SOFT_RESET, 1);
}