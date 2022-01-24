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
typedef  int /*<<< orphan*/  u64 ;
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct cx23885_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CX23888_IR_RXCLK_REG ; 
 int /*<<< orphan*/  FIFO_RXTX ; 
 scalar_t__ IR_MAX_DURATION ; 
 int /*<<< orphan*/  FUNC0 (struct cx23885_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 FUNC4(struct cx23885_dev *dev, u32 ns,
				      u16 *divider)
{
	u64 pulse_clocks;

	if (ns > IR_MAX_DURATION)
		ns = IR_MAX_DURATION;
	pulse_clocks = FUNC1(ns);
	*divider = FUNC2(pulse_clocks);
	FUNC0(dev, CX23888_IR_RXCLK_REG, *divider);
	return (u32) FUNC3(FIFO_RXTX, *divider);
}