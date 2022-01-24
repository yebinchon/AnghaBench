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
 int /*<<< orphan*/  PLDI2CSTS ; 
 int PLDI2CSTS_NOACK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static inline void FUNC2(void)
{
	int i;

	for (i = 0; i < 1000; i++)
		FUNC1();
	while (FUNC0(PLDI2CSTS) & PLDI2CSTS_NOACK)
		FUNC1();
}