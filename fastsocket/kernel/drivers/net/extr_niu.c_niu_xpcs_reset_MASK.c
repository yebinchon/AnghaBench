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
typedef  int u64 ;
struct niu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  XPCS_CONTROL1 ; 
 int XPCS_CONTROL1_RESET ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct niu *np)
{
	int limit = 1000;
	u64 val = FUNC0(XPCS_CONTROL1);
	val |= XPCS_CONTROL1_RESET;
	FUNC1(XPCS_CONTROL1, val);
	while ((--limit >= 0) && (val & XPCS_CONTROL1_RESET)) {
		FUNC2(100);
		val = FUNC0(XPCS_CONTROL1);
	}
}