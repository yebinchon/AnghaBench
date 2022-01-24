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
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 int /*<<< orphan*/  bamboo_mac0 ; 
 int /*<<< orphan*/  bamboo_mac1 ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void FUNC4(void)
{
	unsigned long sysclk = 33333333;

	FUNC1(sysclk, 11059200, 25000000);
	FUNC3();
	FUNC2((u32 *)0xef600e00, (u32 *)0xef600f00);
	FUNC0("ethernet0", bamboo_mac0);
	FUNC0("ethernet1", bamboo_mac1);
}