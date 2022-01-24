#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct cas {int /*<<< orphan*/  lock; scalar_t__ regs; } ;
struct TYPE_2__ {int /*<<< orphan*/  offsets; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cas*,int /*<<< orphan*/ ) ; 
 TYPE_1__* ethtool_register_table ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct cas *cp, u8 *ptr, int len)
{
	u8 *p;
	int i;
	unsigned long flags;

	FUNC3(&cp->lock, flags);
	for (i = 0, p = ptr; i < len ; i ++, p += sizeof(u32)) {
		u16 hval;
		u32 val;
		if (ethtool_register_table[i].offsets < 0) {
			hval = FUNC0(cp,
				    -ethtool_register_table[i].offsets);
			val = hval;
		} else {
			val= FUNC2(cp->regs+ethtool_register_table[i].offsets);
		}
		FUNC1(p, (u8 *)&val, sizeof(u32));
	}
	FUNC4(&cp->lock, flags);
}