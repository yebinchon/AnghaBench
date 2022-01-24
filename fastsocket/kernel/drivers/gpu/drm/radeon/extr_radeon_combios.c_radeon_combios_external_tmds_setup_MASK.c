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
typedef  int uint8_t ;
typedef  int uint32_t ;
typedef  int uint16_t ;
struct radeon_encoder_ext_tmds {int slave_addr; int /*<<< orphan*/  i2c_bus; } ;
struct radeon_encoder {struct radeon_encoder_ext_tmds* enc_priv; } ;
struct radeon_device {int flags; } ;
struct drm_encoder {struct drm_device* dev; } ;
struct drm_device {struct radeon_device* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMBIOS_EXT_TMDS_INFO_TABLE ; 
 int /*<<< orphan*/  COMBIOS_TMDS_POWER_ON_TABLE ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int RADEON_IS_IGP ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 
 int FUNC8 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int,int) ; 
 struct radeon_encoder* FUNC11 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 

bool FUNC13(struct drm_encoder *encoder)
{
	struct drm_device *dev = encoder->dev;
	struct radeon_device *rdev = dev->dev_private;
	struct radeon_encoder *radeon_encoder = FUNC11(encoder);
	uint16_t offset;
	uint8_t blocks, slave_addr, rev;
	uint32_t index, id;
	uint32_t reg, val, and_mask, or_mask;
	struct radeon_encoder_ext_tmds *tmds = radeon_encoder->enc_priv;

	if (!tmds)
		return false;

	if (rdev->flags & RADEON_IS_IGP) {
		offset = FUNC8(dev, COMBIOS_TMDS_POWER_ON_TABLE);
		rev = FUNC3(offset);
		if (offset) {
			rev = FUNC3(offset);
			if (rev > 1) {
				blocks = FUNC3(offset + 3);
				index = offset + 4;
				while (blocks > 0) {
					id = FUNC1(index);
					index += 2;
					switch (id >> 13) {
					case 0:
						reg = (id & 0x1fff) * 4;
						val = FUNC2(index);
						index += 4;
						FUNC6(reg, val);
						break;
					case 2:
						reg = (id & 0x1fff) * 4;
						and_mask = FUNC2(index);
						index += 4;
						or_mask = FUNC2(index);
						index += 4;
						val = FUNC4(reg);
						val = (val & and_mask) | or_mask;
						FUNC6(reg, val);
						break;
					case 3:
						val = FUNC1(index);
						index += 2;
						FUNC12(val);
						break;
					case 4:
						val = FUNC1(index);
						index += 2;
						FUNC9(val);
						break;
					case 6:
						slave_addr = id & 0xff;
						slave_addr >>= 1; /* 7 bit addressing */
						index++;
						reg = FUNC3(index);
						index++;
						val = FUNC3(index);
						index++;
						FUNC10(tmds->i2c_bus,
								    slave_addr,
								    reg, val);
						break;
					default:
						FUNC0("Unknown id %d\n", id >> 13);
						break;
					}
					blocks--;
				}
				return true;
			}
		}
	} else {
		offset = FUNC8(dev, COMBIOS_EXT_TMDS_INFO_TABLE);
		if (offset) {
			index = offset + 10;
			id = FUNC1(index);
			while (id != 0xffff) {
				index += 2;
				switch (id >> 13) {
				case 0:
					reg = (id & 0x1fff) * 4;
					val = FUNC2(index);
					FUNC6(reg, val);
					break;
				case 2:
					reg = (id & 0x1fff) * 4;
					and_mask = FUNC2(index);
					index += 4;
					or_mask = FUNC2(index);
					index += 4;
					val = FUNC4(reg);
					val = (val & and_mask) | or_mask;
					FUNC6(reg, val);
					break;
				case 4:
					val = FUNC1(index);
					index += 2;
					FUNC12(val);
					break;
				case 5:
					reg = id & 0x1fff;
					and_mask = FUNC2(index);
					index += 4;
					or_mask = FUNC2(index);
					index += 4;
					val = FUNC5(reg);
					val = (val & and_mask) | or_mask;
					FUNC7(reg, val);
					break;
				case 6:
					reg = id & 0x1fff;
					val = FUNC3(index);
					index += 1;
					FUNC10(tmds->i2c_bus,
							    tmds->slave_addr,
							    reg, val);
					break;
				default:
					FUNC0("Unknown id %d\n", id >> 13);
					break;
				}
				id = FUNC1(index);
			}
			return true;
		}
	}
	return false;
}