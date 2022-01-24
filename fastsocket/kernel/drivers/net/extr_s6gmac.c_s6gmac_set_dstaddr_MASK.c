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
struct s6gmac {scalar_t__ reg; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static inline void FUNC5(struct s6gmac *pd, int n,
	u32 addrlo, u32 addrhi, u32 masklo, u32 maskhi)
{
	FUNC4(addrlo, pd->reg + FUNC1(n));
	FUNC4(addrhi, pd->reg + FUNC0(n));
	FUNC4(masklo, pd->reg + FUNC3(n));
	FUNC4(maskhi, pd->reg + FUNC2(n));
}