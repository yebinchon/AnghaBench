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
typedef  int /*<<< orphan*/  u16 ;
struct sky2_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PREF_UNIT_PUT_IDX ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct sky2_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static inline void FUNC4(struct sky2_hw *hw, unsigned q, u16 idx)
{
	/* Make sure write' to descriptors are complete before we tell hardware */
	FUNC3();
	FUNC2(hw, FUNC0(q, PREF_UNIT_PUT_IDX), idx);

	/* Synchronize I/O on since next processor may write to tail */
	FUNC1();
}