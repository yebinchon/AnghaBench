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
typedef  int u8 ;
typedef  int u16 ;
struct ath_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ath_hw*,int,int*) ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static bool FUNC2(struct ath_hw *ah, int address,
				    u8 *buffer)
{
	u16 val;

	if (FUNC1(!FUNC0(ah, address / 2, &val)))
		return false;

	buffer[0] = val >> 8;
	buffer[1] = val & 0xff;

	return true;
}