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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline bool FUNC3(u8 rate, u8 dot11rate, u16 rate_flags,
				   u32 phy, u32 capflag)
{
	if (rate != dot11rate || !FUNC1(phy))
		return false;

	if (!FUNC2(rate_flags, capflag))
		return false;

	if (!(rate_flags & FUNC0(capflag)))
		return false;

	return true;
}