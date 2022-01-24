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
struct r592_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_ALL_ACK_MASK ; 
 int /*<<< orphan*/  IRQ_ALL_EN_MASK ; 
 int /*<<< orphan*/  R592_REG_MSC ; 
 int /*<<< orphan*/  FUNC0 (struct r592_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct r592_device *dev)
{
	/* Disable & ACK all interrupts */
	FUNC0(dev, R592_REG_MSC, IRQ_ALL_ACK_MASK);
	FUNC0(dev, R592_REG_MSC, IRQ_ALL_EN_MASK);
}