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
typedef  int u32 ;
struct pluto {int dummy; } ;

/* Variables and functions */
 int MISC_FRST ; 
 int /*<<< orphan*/  REG_MISC ; 
 int FUNC0 (struct pluto*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pluto*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct pluto *pluto, int reenable)
{
	u32 val = FUNC0(pluto, REG_MISC);

	if (val & MISC_FRST) {
		val &= ~MISC_FRST;
		FUNC1(pluto, REG_MISC, val);
	}
	if (reenable) {
		val |= MISC_FRST;
		FUNC1(pluto, REG_MISC, val);
	}
}