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
struct il_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HBUS_TARG_PRPH_RADDR ; 
 int /*<<< orphan*/  HBUS_TARG_PRPH_RDAT ; 
 int FUNC0 (struct il_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct il_priv*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline u32
FUNC2(struct il_priv *il, u32 reg)
{
	FUNC1(il, HBUS_TARG_PRPH_RADDR, reg | (3 << 24));
	return FUNC0(il, HBUS_TARG_PRPH_RDAT);
}