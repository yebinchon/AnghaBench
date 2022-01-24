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
struct radeon_i2c_bus_rec {int /*<<< orphan*/  mask_clk_reg; scalar_t__ mm_i2c; } ;
struct radeon_i2c_chan {struct radeon_i2c_bus_rec rec; TYPE_1__* dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  mutex; } ;
struct radeon_device {int family; int /*<<< orphan*/  dc_hw_i2c_mutex; TYPE_2__ pm; scalar_t__ is_atom_bios; } ;
struct i2c_msg {int len; int addr; int flags; int* buf; } ;
struct i2c_adapter {int dummy; } ;
struct TYPE_3__ {struct radeon_device* dev_private; } ;

/* Variables and functions */
 int ATOM_S6_HW_I2C_BUSY_STATE ; 
#define  CHIP_R100 149 
#define  CHIP_R200 148 
#define  CHIP_R300 147 
#define  CHIP_R350 146 
#define  CHIP_R420 145 
#define  CHIP_R423 144 
#define  CHIP_RS100 143 
#define  CHIP_RS200 142 
#define  CHIP_RS300 141 
#define  CHIP_RS400 140 
#define  CHIP_RS480 139 
#define  CHIP_RV100 138 
#define  CHIP_RV200 137 
#define  CHIP_RV250 136 
#define  CHIP_RV280 135 
#define  CHIP_RV350 134 
#define  CHIP_RV380 133 
#define  CHIP_RV410 132 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int EINVAL ; 
 int EIO ; 
 int I2C_M_RD ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  R200_SEL_DDC1 ; 
 int /*<<< orphan*/  R200_SEL_DDC2 ; 
 int /*<<< orphan*/  R200_SEL_DDC3 ; 
 int RADEON_BIOS_6_SCRATCH ; 
 int RADEON_DVI_I2C_CNTL_0 ; 
 int RADEON_DVI_I2C_CNTL_1 ; 
 int RADEON_DVI_I2C_DATA ; 
#define  RADEON_GPIO_CRT2_DDC 131 
#define  RADEON_GPIO_DVI_DDC 130 
#define  RADEON_GPIO_MONID 129 
#define  RADEON_GPIO_VGA_DDC 128 
 int RADEON_I2C_ABORT ; 
 int RADEON_I2C_ADDR_COUNT_SHIFT ; 
 int RADEON_I2C_CNTL_0 ; 
 int RADEON_I2C_CNTL_1 ; 
 int RADEON_I2C_DATA ; 
 int RADEON_I2C_DATA_COUNT_SHIFT ; 
 int RADEON_I2C_DONE ; 
 int RADEON_I2C_DRIVE_EN ; 
 int RADEON_I2C_EN ; 
 int RADEON_I2C_GO ; 
 int RADEON_I2C_HALT ; 
 int RADEON_I2C_NACK ; 
 int RADEON_I2C_PRESCALE_SHIFT ; 
 int RADEON_I2C_RECEIVE ; 
 int RADEON_I2C_SOFT_RST ; 
 int RADEON_I2C_START ; 
 int RADEON_I2C_STOP ; 
 int RADEON_I2C_TIME_LIMIT_SHIFT ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 struct radeon_i2c_chan* FUNC5 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

__attribute__((used)) static int FUNC10(struct i2c_adapter *i2c_adap,
			    struct i2c_msg *msgs, int num)
{
	struct radeon_i2c_chan *i2c = FUNC5(i2c_adap);
	struct radeon_device *rdev = i2c->dev->dev_private;
	struct radeon_i2c_bus_rec *rec = &i2c->rec;
	struct i2c_msg *p;
	int i, j, k, ret = num;
	u32 prescale;
	u32 i2c_cntl_0, i2c_cntl_1, i2c_data;
	u32 tmp, reg;

	FUNC6(&rdev->dc_hw_i2c_mutex);
	/* take the pm lock since we need a constant sclk */
	FUNC6(&rdev->pm.mutex);

	prescale = FUNC8(rdev);

	reg = ((prescale << RADEON_I2C_PRESCALE_SHIFT) |
	       RADEON_I2C_DRIVE_EN |
	       RADEON_I2C_START |
	       RADEON_I2C_STOP |
	       RADEON_I2C_GO);

	if (rdev->is_atom_bios) {
		tmp = FUNC3(RADEON_BIOS_6_SCRATCH);
		FUNC4(RADEON_BIOS_6_SCRATCH, tmp | ATOM_S6_HW_I2C_BUSY_STATE);
	}

	if (rec->mm_i2c) {
		i2c_cntl_0 = RADEON_I2C_CNTL_0;
		i2c_cntl_1 = RADEON_I2C_CNTL_1;
		i2c_data = RADEON_I2C_DATA;
	} else {
		i2c_cntl_0 = RADEON_DVI_I2C_CNTL_0;
		i2c_cntl_1 = RADEON_DVI_I2C_CNTL_1;
		i2c_data = RADEON_DVI_I2C_DATA;

		switch (rdev->family) {
		case CHIP_R100:
		case CHIP_RV100:
		case CHIP_RS100:
		case CHIP_RV200:
		case CHIP_RS200:
		case CHIP_RS300:
			switch (rec->mask_clk_reg) {
			case RADEON_GPIO_DVI_DDC:
				/* no gpio select bit */
				break;
			default:
				FUNC1("gpio not supported with hw i2c\n");
				ret = -EINVAL;
				goto done;
			}
			break;
		case CHIP_R200:
			/* only bit 4 on r200 */
			switch (rec->mask_clk_reg) {
			case RADEON_GPIO_DVI_DDC:
				reg |= FUNC2(R200_SEL_DDC1);
				break;
			case RADEON_GPIO_MONID:
				reg |= FUNC2(R200_SEL_DDC3);
				break;
			default:
				FUNC1("gpio not supported with hw i2c\n");
				ret = -EINVAL;
				goto done;
			}
			break;
		case CHIP_RV250:
		case CHIP_RV280:
			/* bits 3 and 4 */
			switch (rec->mask_clk_reg) {
			case RADEON_GPIO_DVI_DDC:
				reg |= FUNC2(R200_SEL_DDC1);
				break;
			case RADEON_GPIO_VGA_DDC:
				reg |= FUNC2(R200_SEL_DDC2);
				break;
			case RADEON_GPIO_CRT2_DDC:
				reg |= FUNC2(R200_SEL_DDC3);
				break;
			default:
				FUNC1("gpio not supported with hw i2c\n");
				ret = -EINVAL;
				goto done;
			}
			break;
		case CHIP_R300:
		case CHIP_R350:
			/* only bit 4 on r300/r350 */
			switch (rec->mask_clk_reg) {
			case RADEON_GPIO_VGA_DDC:
				reg |= FUNC2(R200_SEL_DDC1);
				break;
			case RADEON_GPIO_DVI_DDC:
				reg |= FUNC2(R200_SEL_DDC3);
				break;
			default:
				FUNC1("gpio not supported with hw i2c\n");
				ret = -EINVAL;
				goto done;
			}
			break;
		case CHIP_RV350:
		case CHIP_RV380:
		case CHIP_R420:
		case CHIP_R423:
		case CHIP_RV410:
		case CHIP_RS400:
		case CHIP_RS480:
			/* bits 3 and 4 */
			switch (rec->mask_clk_reg) {
			case RADEON_GPIO_VGA_DDC:
				reg |= FUNC2(R200_SEL_DDC1);
				break;
			case RADEON_GPIO_DVI_DDC:
				reg |= FUNC2(R200_SEL_DDC2);
				break;
			case RADEON_GPIO_MONID:
				reg |= FUNC2(R200_SEL_DDC3);
				break;
			default:
				FUNC1("gpio not supported with hw i2c\n");
				ret = -EINVAL;
				goto done;
			}
			break;
		default:
			FUNC1("unsupported asic\n");
			ret = -EINVAL;
			goto done;
			break;
		}
	}

	/* check for bus probe */
	p = &msgs[0];
	if ((num == 1) && (p->len == 0)) {
		FUNC4(i2c_cntl_0, (RADEON_I2C_DONE |
				    RADEON_I2C_NACK |
				    RADEON_I2C_HALT |
				    RADEON_I2C_SOFT_RST));
		FUNC4(i2c_data, (p->addr << 1) & 0xff);
		FUNC4(i2c_data, 0);
		FUNC4(i2c_cntl_1, ((1 << RADEON_I2C_DATA_COUNT_SHIFT) |
				    (1 << RADEON_I2C_ADDR_COUNT_SHIFT) |
				    RADEON_I2C_EN |
				    (48 << RADEON_I2C_TIME_LIMIT_SHIFT)));
		FUNC4(i2c_cntl_0, reg);
		for (k = 0; k < 32; k++) {
			FUNC9(10);
			tmp = FUNC3(i2c_cntl_0);
			if (tmp & RADEON_I2C_GO)
				continue;
			tmp = FUNC3(i2c_cntl_0);
			if (tmp & RADEON_I2C_DONE)
				break;
			else {
				FUNC0("i2c write error 0x%08x\n", tmp);
				FUNC4(i2c_cntl_0, tmp | RADEON_I2C_ABORT);
				ret = -EIO;
				goto done;
			}
		}
		goto done;
	}

	for (i = 0; i < num; i++) {
		p = &msgs[i];
		for (j = 0; j < p->len; j++) {
			if (p->flags & I2C_M_RD) {
				FUNC4(i2c_cntl_0, (RADEON_I2C_DONE |
						    RADEON_I2C_NACK |
						    RADEON_I2C_HALT |
						    RADEON_I2C_SOFT_RST));
				FUNC4(i2c_data, ((p->addr << 1) & 0xff) | 0x1);
				FUNC4(i2c_cntl_1, ((1 << RADEON_I2C_DATA_COUNT_SHIFT) |
						    (1 << RADEON_I2C_ADDR_COUNT_SHIFT) |
						    RADEON_I2C_EN |
						    (48 << RADEON_I2C_TIME_LIMIT_SHIFT)));
				FUNC4(i2c_cntl_0, reg | RADEON_I2C_RECEIVE);
				for (k = 0; k < 32; k++) {
					FUNC9(10);
					tmp = FUNC3(i2c_cntl_0);
					if (tmp & RADEON_I2C_GO)
						continue;
					tmp = FUNC3(i2c_cntl_0);
					if (tmp & RADEON_I2C_DONE)
						break;
					else {
						FUNC0("i2c read error 0x%08x\n", tmp);
						FUNC4(i2c_cntl_0, tmp | RADEON_I2C_ABORT);
						ret = -EIO;
						goto done;
					}
				}
				p->buf[j] = FUNC3(i2c_data) & 0xff;
			} else {
				FUNC4(i2c_cntl_0, (RADEON_I2C_DONE |
						    RADEON_I2C_NACK |
						    RADEON_I2C_HALT |
						    RADEON_I2C_SOFT_RST));
				FUNC4(i2c_data, (p->addr << 1) & 0xff);
				FUNC4(i2c_data, p->buf[j]);
				FUNC4(i2c_cntl_1, ((1 << RADEON_I2C_DATA_COUNT_SHIFT) |
						    (1 << RADEON_I2C_ADDR_COUNT_SHIFT) |
						    RADEON_I2C_EN |
						    (48 << RADEON_I2C_TIME_LIMIT_SHIFT)));
				FUNC4(i2c_cntl_0, reg);
				for (k = 0; k < 32; k++) {
					FUNC9(10);
					tmp = FUNC3(i2c_cntl_0);
					if (tmp & RADEON_I2C_GO)
						continue;
					tmp = FUNC3(i2c_cntl_0);
					if (tmp & RADEON_I2C_DONE)
						break;
					else {
						FUNC0("i2c write error 0x%08x\n", tmp);
						FUNC4(i2c_cntl_0, tmp | RADEON_I2C_ABORT);
						ret = -EIO;
						goto done;
					}
				}
			}
		}
	}

done:
	FUNC4(i2c_cntl_0, 0);
	FUNC4(i2c_cntl_1, 0);
	FUNC4(i2c_cntl_0, (RADEON_I2C_DONE |
			    RADEON_I2C_NACK |
			    RADEON_I2C_HALT |
			    RADEON_I2C_SOFT_RST));

	if (rdev->is_atom_bios) {
		tmp = FUNC3(RADEON_BIOS_6_SCRATCH);
		tmp &= ~ATOM_S6_HW_I2C_BUSY_STATE;
		FUNC4(RADEON_BIOS_6_SCRATCH, tmp);
	}

	FUNC7(&rdev->pm.mutex);
	FUNC7(&rdev->dc_hw_i2c_mutex);

	return ret;
}