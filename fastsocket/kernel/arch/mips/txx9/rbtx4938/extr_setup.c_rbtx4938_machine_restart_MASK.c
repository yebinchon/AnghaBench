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
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  rbtx4938_sfvol_addr ; 
 int /*<<< orphan*/  rbtx4938_softreset_addr ; 
 int /*<<< orphan*/  rbtx4938_softresetlock_addr ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(char *command)
{
	FUNC1();
	FUNC3(1, rbtx4938_softresetlock_addr);
	FUNC3(1, rbtx4938_sfvol_addr);
	FUNC3(1, rbtx4938_softreset_addr);
	/* fallback */
	FUNC0)();
}