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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  rbtx4927_softreset_addr ; 
 int /*<<< orphan*/  rbtx4927_softresetlock_addr ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(char *command)
{
	/* enable the s/w reset register */
	FUNC3(1, rbtx4927_softresetlock_addr);

	/* wait for enable to be seen */
	while (!(FUNC1(rbtx4927_softresetlock_addr) & 1))
		;

	/* do a s/w reset */
	FUNC3(1, rbtx4927_softreset_addr);

	/* fallback */
	FUNC0)();
}