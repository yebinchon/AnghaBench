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
struct cx23885_dev {int dummy; } ;

/* Variables and functions */
 int CNTRL_RFE ; 
 int CNTRL_RXE ; 
 int /*<<< orphan*/  CX23888_IR_CNTRL_REG ; 
 int /*<<< orphan*/  FUNC0 (struct cx23885_dev*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static inline void FUNC1(struct cx23885_dev *dev, bool enable)
{
	FUNC0(dev, CX23888_IR_CNTRL_REG, ~(CNTRL_RXE | CNTRL_RFE),
			   enable ? (CNTRL_RXE | CNTRL_RFE) : 0);
}