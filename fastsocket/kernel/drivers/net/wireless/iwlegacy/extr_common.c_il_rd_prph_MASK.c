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
struct il_priv {int /*<<< orphan*/  reg_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct il_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

u32
FUNC5(struct il_priv *il, u32 reg)
{
	unsigned long reg_flags;
	u32 val;

	FUNC3(&il->reg_lock, reg_flags);
	FUNC0(il);
	val = FUNC1(il, reg);
	FUNC2(il);
	FUNC4(&il->reg_lock, reg_flags);
	return val;
}