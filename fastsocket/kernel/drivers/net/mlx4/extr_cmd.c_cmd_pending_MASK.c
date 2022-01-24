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
typedef  int u32 ;
struct mlx4_dev {int /*<<< orphan*/  pdev; } ;
struct TYPE_3__ {int toggle; scalar_t__ hcr; } ;
struct TYPE_4__ {TYPE_1__ cmd; } ;

/* Variables and functions */
 int EIO ; 
 int HCR_GO_BIT ; 
 scalar_t__ HCR_STATUS_OFFSET ; 
 int HCR_T_BIT ; 
 TYPE_2__* FUNC0 (struct mlx4_dev*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__) ; 
 int FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct mlx4_dev *dev)
{
	u32 status;

	if (FUNC1(dev->pdev))
		return -EIO;

	status = FUNC2(FUNC0(dev)->cmd.hcr + HCR_STATUS_OFFSET);

	return (status & FUNC3(1 << HCR_GO_BIT)) ||
		(FUNC0(dev)->cmd.toggle ==
		 !!(status & FUNC3(1 << HCR_T_BIT)));
}