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
typedef  int /*<<< orphan*/  val ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct sky2_hw {int dummy; } ;

/* Variables and functions */
 scalar_t__ PCI_VPD_ADDR ; 
 scalar_t__ PCI_VPD_DATA ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct sky2_hw*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct sky2_hw*,scalar_t__,int) ; 
 int FUNC4 (struct sky2_hw*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct sky2_hw *hw, int cap, void *data,
			 u16 offset, size_t length)
{
	int rc = 0;

	while (length > 0) {
		u32 val;

		FUNC3(hw, cap + PCI_VPD_ADDR, offset);
		rc = FUNC4(hw, cap, 0);
		if (rc)
			break;

		val = FUNC2(hw, cap + PCI_VPD_DATA);

		FUNC0(data, &val, FUNC1(sizeof(val), length));
		offset += sizeof(u32);
		data += sizeof(u32);
		length -= sizeof(u32);
	}

	return rc;
}