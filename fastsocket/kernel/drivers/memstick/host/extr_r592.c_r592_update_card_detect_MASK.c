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
typedef  int u32 ;
struct r592_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  R592_REG_MSC ; 
 int R592_REG_MSC_IRQ_INSERT ; 
 int R592_REG_MSC_IRQ_REMOVE ; 
 int R592_REG_MSC_PRSNT ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int FUNC1 (struct r592_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct r592_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct r592_device *dev)
{
	u32 reg = FUNC1(dev, R592_REG_MSC);
	bool card_detected = reg & R592_REG_MSC_PRSNT;

	FUNC0("update card detect. card state: %s", card_detected ?
		"present" : "absent");

	reg &= ~((R592_REG_MSC_IRQ_REMOVE | R592_REG_MSC_IRQ_INSERT) << 16);

	if (card_detected)
		reg |= (R592_REG_MSC_IRQ_REMOVE << 16);
	else
		reg |= (R592_REG_MSC_IRQ_INSERT << 16);

	FUNC2(dev, R592_REG_MSC, reg);
}