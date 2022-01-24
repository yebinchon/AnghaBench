#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  (* release_swfw_sync ) (struct e1000_hw*,int /*<<< orphan*/ ) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct e1000_hw {TYPE_2__ mac; } ;

/* Variables and functions */
 int /*<<< orphan*/  E1000_SWFW_EEP_SM ; 
 int /*<<< orphan*/  FUNC0 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct e1000_hw*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct e1000_hw *hw)
{
	FUNC0(hw);
	hw->mac.ops.release_swfw_sync(hw, E1000_SWFW_EEP_SM);
}