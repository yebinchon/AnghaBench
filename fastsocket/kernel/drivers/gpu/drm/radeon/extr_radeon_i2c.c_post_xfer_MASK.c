#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct radeon_i2c_bus_rec {int mask_clk_mask; int mask_data_mask; int /*<<< orphan*/  mask_data_reg; int /*<<< orphan*/  mask_clk_reg; } ;
struct radeon_i2c_chan {struct radeon_i2c_bus_rec rec; TYPE_1__* dev; } ;
struct radeon_device {int dummy; } ;
struct i2c_adapter {int dummy; } ;
struct TYPE_2__ {struct radeon_device* dev_private; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 struct radeon_i2c_chan* FUNC2 (struct i2c_adapter*) ; 

__attribute__((used)) static void FUNC3(struct i2c_adapter *i2c_adap)
{
	struct radeon_i2c_chan *i2c = FUNC2(i2c_adap);
	struct radeon_device *rdev = i2c->dev->dev_private;
	struct radeon_i2c_bus_rec *rec = &i2c->rec;
	uint32_t temp;

	/* unmask the gpio pins for software use */
	temp = FUNC0(rec->mask_clk_reg) & ~rec->mask_clk_mask;
	FUNC1(rec->mask_clk_reg, temp);
	temp = FUNC0(rec->mask_clk_reg);

	temp = FUNC0(rec->mask_data_reg) & ~rec->mask_data_mask;
	FUNC1(rec->mask_data_reg, temp);
	temp = FUNC0(rec->mask_data_reg);
}