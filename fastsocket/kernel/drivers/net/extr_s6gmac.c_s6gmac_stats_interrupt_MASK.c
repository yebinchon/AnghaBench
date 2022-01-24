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
typedef  scalar_t__ u32 ;
struct s6gmac {scalar_t__ reg; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct s6gmac*,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC2 (struct s6gmac*,int) ; 
 int /*<<< orphan*/ ** statinf ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static inline void FUNC4(struct s6gmac *pd, int carry)
{
	u32 mask;
	mask = FUNC2(pd, carry);
	if (mask) {
		FUNC3(mask, pd->reg + FUNC0(carry));
		FUNC1(pd, &statinf[carry][0], mask);
	}
}