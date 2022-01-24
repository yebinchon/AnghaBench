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
struct skge_hw {scalar_t__ chip_id; } ;

/* Variables and functions */
 scalar_t__ CHIP_ID_GENESIS ; 
 int /*<<< orphan*/  FUNC0 (struct skge_hw*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct skge_hw*,int) ; 

__attribute__((used)) static void FUNC2(struct skge_hw *hw, int port)
{
	if (hw->chip_id == CHIP_ID_GENESIS)
		FUNC0(hw, port);
	else
		FUNC1(hw, port);
}