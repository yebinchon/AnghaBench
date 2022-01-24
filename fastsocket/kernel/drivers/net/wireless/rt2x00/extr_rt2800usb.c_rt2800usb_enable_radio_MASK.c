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
typedef  int /*<<< orphan*/  u32 ;
struct rt2x00_dev {TYPE_2__* ops; } ;
struct TYPE_4__ {TYPE_1__* rx; } ;
struct TYPE_3__ {int entry_num; } ;

/* Variables and functions */
 int DATA_FRAME_SIZE ; 
 int EIO ; 
 int /*<<< orphan*/  USB_DMA_CFG ; 
 int /*<<< orphan*/  USB_DMA_CFG_PHY_CLEAR ; 
 int /*<<< orphan*/  USB_DMA_CFG_RX_BULK_AGG_EN ; 
 int /*<<< orphan*/  USB_DMA_CFG_RX_BULK_AGG_LIMIT ; 
 int /*<<< orphan*/  USB_DMA_CFG_RX_BULK_AGG_TIMEOUT ; 
 int /*<<< orphan*/  USB_DMA_CFG_RX_BULK_EN ; 
 int /*<<< orphan*/  USB_DMA_CFG_TX_BULK_EN ; 
 int FUNC0 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct rt2x00_dev *rt2x00dev)
{
	u32 reg;

	if (FUNC5(FUNC1(rt2x00dev)))
		return -EIO;

	FUNC3(rt2x00dev, USB_DMA_CFG, &reg);
	FUNC2(&reg, USB_DMA_CFG_PHY_CLEAR, 0);
	FUNC2(&reg, USB_DMA_CFG_RX_BULK_AGG_EN, 0);
	FUNC2(&reg, USB_DMA_CFG_RX_BULK_AGG_TIMEOUT, 128);
	/*
	 * Total room for RX frames in kilobytes, PBF might still exceed
	 * this limit so reduce the number to prevent errors.
	 */
	FUNC2(&reg, USB_DMA_CFG_RX_BULK_AGG_LIMIT,
			   ((rt2x00dev->ops->rx->entry_num * DATA_FRAME_SIZE)
			    / 1024) - 3);
	FUNC2(&reg, USB_DMA_CFG_RX_BULK_EN, 1);
	FUNC2(&reg, USB_DMA_CFG_TX_BULK_EN, 1);
	FUNC4(rt2x00dev, USB_DMA_CFG, reg);

	return FUNC0(rt2x00dev);
}