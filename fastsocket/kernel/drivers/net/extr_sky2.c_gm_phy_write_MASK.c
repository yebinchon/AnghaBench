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
typedef  int u16 ;
struct sky2_hw {TYPE_2__** dev; TYPE_1__* pdev; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  GM_SMI_CTRL ; 
 int GM_SMI_CT_BUSY ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  GM_SMI_DATA ; 
 int /*<<< orphan*/  PHY_ADDR_MARV ; 
 int PHY_RETRIES ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct sky2_hw*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sky2_hw*,unsigned int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct sky2_hw *hw, unsigned port, u16 reg, u16 val)
{
	int i;

	FUNC5(hw, port, GM_SMI_DATA, val);
	FUNC5(hw, port, GM_SMI_CTRL,
		    FUNC0(PHY_ADDR_MARV) | FUNC1(reg));

	for (i = 0; i < PHY_RETRIES; i++) {
		u16 ctrl = FUNC4(hw, port, GM_SMI_CTRL);
		if (ctrl == 0xffff)
			goto io_error;

		if (!(ctrl & GM_SMI_CT_BUSY))
			return 0;

		FUNC6(10);
	}

	FUNC3(&hw->pdev->dev,"%s: phy write timeout\n", hw->dev[port]->name);
	return -ETIMEDOUT;

io_error:
	FUNC2(&hw->pdev->dev, "%s: phy I/O error\n", hw->dev[port]->name);
	return -EIO;
}