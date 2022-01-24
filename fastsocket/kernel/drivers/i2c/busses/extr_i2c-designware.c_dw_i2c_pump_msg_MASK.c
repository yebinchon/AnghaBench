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
typedef  int u16 ;
struct dw_i2c_dev {int status; scalar_t__ base; int /*<<< orphan*/  adapter; } ;

/* Variables and functions */
 scalar_t__ DW_IC_INTR_MASK ; 
 int DW_IC_INTR_STOP_DET ; 
 int DW_IC_INTR_TX_ABRT ; 
 int DW_IC_INTR_TX_EMPTY ; 
 int STATUS_WRITE_IN_PROGRESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC3(unsigned long data)
{
	struct dw_i2c_dev *dev = (struct dw_i2c_dev *) data;
	u16 intr_mask;

	FUNC0(&dev->adapter);
	FUNC1(&dev->adapter);

	intr_mask = DW_IC_INTR_STOP_DET | DW_IC_INTR_TX_ABRT;
	if (dev->status & STATUS_WRITE_IN_PROGRESS)
		intr_mask |= DW_IC_INTR_TX_EMPTY;
	FUNC2(intr_mask, dev->base + DW_IC_INTR_MASK);
}