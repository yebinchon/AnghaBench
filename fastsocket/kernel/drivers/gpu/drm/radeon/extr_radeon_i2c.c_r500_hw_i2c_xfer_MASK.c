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
struct radeon_i2c_bus_rec {int mask_clk_reg; int mask_clk_mask; int mask_data_reg; int mask_data_mask; int a_clk_reg; int a_clk_mask; int a_data_reg; int a_data_mask; int en_clk_reg; int en_clk_mask; int en_data_reg; int en_data_mask; } ;
struct radeon_i2c_chan {struct radeon_i2c_bus_rec rec; TYPE_1__* dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  mutex; } ;
struct radeon_device {int /*<<< orphan*/  dc_hw_i2c_mutex; TYPE_2__ pm; } ;
struct i2c_msg {int len; int addr; int flags; int* buf; } ;
struct i2c_adapter {int dummy; } ;
struct TYPE_3__ {struct radeon_device* dev_private; } ;

/* Variables and functions */
 int ATOM_S6_HW_I2C_BUSY_STATE ; 
#define  AVIVO_DC_GPIO_DDC1_MASK 130 
#define  AVIVO_DC_GPIO_DDC2_MASK 129 
#define  AVIVO_DC_GPIO_DDC3_MASK 128 
 int AVIVO_DC_I2C_ABORT ; 
 int FUNC0 (int) ; 
 int AVIVO_DC_I2C_ARBITRATION ; 
 int AVIVO_DC_I2C_CONTROL1 ; 
 int AVIVO_DC_I2C_CONTROL2 ; 
 int AVIVO_DC_I2C_CONTROL3 ; 
 int AVIVO_DC_I2C_DATA ; 
 int FUNC1 (int) ; 
 int AVIVO_DC_I2C_DONE ; 
 int AVIVO_DC_I2C_EN ; 
 int AVIVO_DC_I2C_GO ; 
 int AVIVO_DC_I2C_HALT ; 
 int AVIVO_DC_I2C_NACK ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int AVIVO_DC_I2C_RECEIVE ; 
 int AVIVO_DC_I2C_RESET ; 
 int AVIVO_DC_I2C_SOFT_RESET ; 
 int AVIVO_DC_I2C_START ; 
 int AVIVO_DC_I2C_STATUS1 ; 
 int AVIVO_DC_I2C_STOP ; 
 int AVIVO_DC_I2C_SW_CAN_USE_I2C ; 
 int AVIVO_DC_I2C_SW_DONE_USING_I2C ; 
 int AVIVO_DC_I2C_SW_WANTS_TO_USE_I2C ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  AVIVO_SEL_DDC1 ; 
 int /*<<< orphan*/  AVIVO_SEL_DDC2 ; 
 int /*<<< orphan*/  AVIVO_SEL_DDC3 ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int EBUSY ; 
 int EINVAL ; 
 int EIO ; 
 int I2C_M_RD ; 
 int RADEON_BIOS_6_SCRATCH ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 
 struct radeon_i2c_chan* FUNC8 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 

__attribute__((used)) static int FUNC13(struct i2c_adapter *i2c_adap,
			    struct i2c_msg *msgs, int num)
{
	struct radeon_i2c_chan *i2c = FUNC8(i2c_adap);
	struct radeon_device *rdev = i2c->dev->dev_private;
	struct radeon_i2c_bus_rec *rec = &i2c->rec;
	struct i2c_msg *p;
	int i, j, remaining, current_count, buffer_offset, ret = num;
	u32 prescale;
	u32 tmp, reg;
	u32 saved1, saved2;

	FUNC9(&rdev->dc_hw_i2c_mutex);
	/* take the pm lock since we need a constant sclk */
	FUNC9(&rdev->pm.mutex);

	prescale = FUNC11(rdev);

	/* clear gpio mask bits */
	tmp = FUNC6(rec->mask_clk_reg);
	tmp &= ~rec->mask_clk_mask;
	FUNC7(rec->mask_clk_reg, tmp);
	tmp = FUNC6(rec->mask_clk_reg);

	tmp = FUNC6(rec->mask_data_reg);
	tmp &= ~rec->mask_data_mask;
	FUNC7(rec->mask_data_reg, tmp);
	tmp = FUNC6(rec->mask_data_reg);

	/* clear pin values */
	tmp = FUNC6(rec->a_clk_reg);
	tmp &= ~rec->a_clk_mask;
	FUNC7(rec->a_clk_reg, tmp);
	tmp = FUNC6(rec->a_clk_reg);

	tmp = FUNC6(rec->a_data_reg);
	tmp &= ~rec->a_data_mask;
	FUNC7(rec->a_data_reg, tmp);
	tmp = FUNC6(rec->a_data_reg);

	/* set the pins to input */
	tmp = FUNC6(rec->en_clk_reg);
	tmp &= ~rec->en_clk_mask;
	FUNC7(rec->en_clk_reg, tmp);
	tmp = FUNC6(rec->en_clk_reg);

	tmp = FUNC6(rec->en_data_reg);
	tmp &= ~rec->en_data_mask;
	FUNC7(rec->en_data_reg, tmp);
	tmp = FUNC6(rec->en_data_reg);

	/* */
	tmp = FUNC6(RADEON_BIOS_6_SCRATCH);
	FUNC7(RADEON_BIOS_6_SCRATCH, tmp | ATOM_S6_HW_I2C_BUSY_STATE);
	saved1 = FUNC6(AVIVO_DC_I2C_CONTROL1);
	saved2 = FUNC6(0x494);
	FUNC7(0x494, saved2 | 0x1);

	FUNC7(AVIVO_DC_I2C_ARBITRATION, AVIVO_DC_I2C_SW_WANTS_TO_USE_I2C);
	for (i = 0; i < 50; i++) {
		FUNC12(1);
		if (FUNC6(AVIVO_DC_I2C_ARBITRATION) & AVIVO_DC_I2C_SW_CAN_USE_I2C)
			break;
	}
	if (i == 50) {
		FUNC5("failed to get i2c bus\n");
		ret = -EBUSY;
		goto done;
	}

	reg = AVIVO_DC_I2C_START | AVIVO_DC_I2C_STOP | AVIVO_DC_I2C_EN;
	switch (rec->mask_clk_reg) {
	case AVIVO_DC_GPIO_DDC1_MASK:
		reg |= FUNC2(AVIVO_SEL_DDC1);
		break;
	case AVIVO_DC_GPIO_DDC2_MASK:
		reg |= FUNC2(AVIVO_SEL_DDC2);
		break;
	case AVIVO_DC_GPIO_DDC3_MASK:
		reg |= FUNC2(AVIVO_SEL_DDC3);
		break;
	default:
		FUNC5("gpio not supported with hw i2c\n");
		ret = -EINVAL;
		goto done;
	}

	/* check for bus probe */
	p = &msgs[0];
	if ((num == 1) && (p->len == 0)) {
		FUNC7(AVIVO_DC_I2C_STATUS1, (AVIVO_DC_I2C_DONE |
					      AVIVO_DC_I2C_NACK |
					      AVIVO_DC_I2C_HALT));
		FUNC7(AVIVO_DC_I2C_RESET, AVIVO_DC_I2C_SOFT_RESET);
		FUNC12(1);
		FUNC7(AVIVO_DC_I2C_RESET, 0);

		FUNC7(AVIVO_DC_I2C_DATA, (p->addr << 1) & 0xff);
		FUNC7(AVIVO_DC_I2C_DATA, 0);

		FUNC7(AVIVO_DC_I2C_CONTROL3, FUNC3(48));
		FUNC7(AVIVO_DC_I2C_CONTROL2, (FUNC0(1) |
					       FUNC1(1) |
					       (prescale << 16)));
		FUNC7(AVIVO_DC_I2C_CONTROL1, reg);
		FUNC7(AVIVO_DC_I2C_STATUS1, AVIVO_DC_I2C_GO);
		for (j = 0; j < 200; j++) {
			FUNC12(50);
			tmp = FUNC6(AVIVO_DC_I2C_STATUS1);
			if (tmp & AVIVO_DC_I2C_GO)
				continue;
			tmp = FUNC6(AVIVO_DC_I2C_STATUS1);
			if (tmp & AVIVO_DC_I2C_DONE)
				break;
			else {
				FUNC4("i2c write error 0x%08x\n", tmp);
				FUNC7(AVIVO_DC_I2C_RESET, AVIVO_DC_I2C_ABORT);
				ret = -EIO;
				goto done;
			}
		}
		goto done;
	}

	for (i = 0; i < num; i++) {
		p = &msgs[i];
		remaining = p->len;
		buffer_offset = 0;
		if (p->flags & I2C_M_RD) {
			while (remaining) {
				if (remaining > 15)
					current_count = 15;
				else
					current_count = remaining;
				FUNC7(AVIVO_DC_I2C_STATUS1, (AVIVO_DC_I2C_DONE |
							      AVIVO_DC_I2C_NACK |
							      AVIVO_DC_I2C_HALT));
				FUNC7(AVIVO_DC_I2C_RESET, AVIVO_DC_I2C_SOFT_RESET);
				FUNC12(1);
				FUNC7(AVIVO_DC_I2C_RESET, 0);

				FUNC7(AVIVO_DC_I2C_DATA, ((p->addr << 1) & 0xff) | 0x1);
				FUNC7(AVIVO_DC_I2C_CONTROL3, FUNC3(48));
				FUNC7(AVIVO_DC_I2C_CONTROL2, (FUNC0(1) |
							       FUNC1(current_count) |
							       (prescale << 16)));
				FUNC7(AVIVO_DC_I2C_CONTROL1, reg | AVIVO_DC_I2C_RECEIVE);
				FUNC7(AVIVO_DC_I2C_STATUS1, AVIVO_DC_I2C_GO);
				for (j = 0; j < 200; j++) {
					FUNC12(50);
					tmp = FUNC6(AVIVO_DC_I2C_STATUS1);
					if (tmp & AVIVO_DC_I2C_GO)
						continue;
					tmp = FUNC6(AVIVO_DC_I2C_STATUS1);
					if (tmp & AVIVO_DC_I2C_DONE)
						break;
					else {
						FUNC4("i2c read error 0x%08x\n", tmp);
						FUNC7(AVIVO_DC_I2C_RESET, AVIVO_DC_I2C_ABORT);
						ret = -EIO;
						goto done;
					}
				}
				for (j = 0; j < current_count; j++)
					p->buf[buffer_offset + j] = FUNC6(AVIVO_DC_I2C_DATA) & 0xff;
				remaining -= current_count;
				buffer_offset += current_count;
			}
		} else {
			while (remaining) {
				if (remaining > 15)
					current_count = 15;
				else
					current_count = remaining;
				FUNC7(AVIVO_DC_I2C_STATUS1, (AVIVO_DC_I2C_DONE |
							      AVIVO_DC_I2C_NACK |
							      AVIVO_DC_I2C_HALT));
				FUNC7(AVIVO_DC_I2C_RESET, AVIVO_DC_I2C_SOFT_RESET);
				FUNC12(1);
				FUNC7(AVIVO_DC_I2C_RESET, 0);

				FUNC7(AVIVO_DC_I2C_DATA, (p->addr << 1) & 0xff);
				for (j = 0; j < current_count; j++)
					FUNC7(AVIVO_DC_I2C_DATA, p->buf[buffer_offset + j]);

				FUNC7(AVIVO_DC_I2C_CONTROL3, FUNC3(48));
				FUNC7(AVIVO_DC_I2C_CONTROL2, (FUNC0(1) |
							       FUNC1(current_count) |
							       (prescale << 16)));
				FUNC7(AVIVO_DC_I2C_CONTROL1, reg);
				FUNC7(AVIVO_DC_I2C_STATUS1, AVIVO_DC_I2C_GO);
				for (j = 0; j < 200; j++) {
					FUNC12(50);
					tmp = FUNC6(AVIVO_DC_I2C_STATUS1);
					if (tmp & AVIVO_DC_I2C_GO)
						continue;
					tmp = FUNC6(AVIVO_DC_I2C_STATUS1);
					if (tmp & AVIVO_DC_I2C_DONE)
						break;
					else {
						FUNC4("i2c write error 0x%08x\n", tmp);
						FUNC7(AVIVO_DC_I2C_RESET, AVIVO_DC_I2C_ABORT);
						ret = -EIO;
						goto done;
					}
				}
				remaining -= current_count;
				buffer_offset += current_count;
			}
		}
	}

done:
	FUNC7(AVIVO_DC_I2C_STATUS1, (AVIVO_DC_I2C_DONE |
				      AVIVO_DC_I2C_NACK |
				      AVIVO_DC_I2C_HALT));
	FUNC7(AVIVO_DC_I2C_RESET, AVIVO_DC_I2C_SOFT_RESET);
	FUNC12(1);
	FUNC7(AVIVO_DC_I2C_RESET, 0);

	FUNC7(AVIVO_DC_I2C_ARBITRATION, AVIVO_DC_I2C_SW_DONE_USING_I2C);
	FUNC7(AVIVO_DC_I2C_CONTROL1, saved1);
	FUNC7(0x494, saved2);
	tmp = FUNC6(RADEON_BIOS_6_SCRATCH);
	tmp &= ~ATOM_S6_HW_I2C_BUSY_STATE;
	FUNC7(RADEON_BIOS_6_SCRATCH, tmp);

	FUNC10(&rdev->pm.mutex);
	FUNC10(&rdev->dc_hw_i2c_mutex);

	return ret;
}