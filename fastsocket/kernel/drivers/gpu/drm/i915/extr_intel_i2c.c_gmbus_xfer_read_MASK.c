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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct i2c_msg {int len; int addr; int /*<<< orphan*/ * buf; } ;
struct drm_i915_private {int gpio_mmio_base; } ;

/* Variables and functions */
 scalar_t__ GMBUS1 ; 
 scalar_t__ GMBUS3 ; 
 int GMBUS_BYTE_COUNT_SHIFT ; 
 int GMBUS_CYCLE_WAIT ; 
 int /*<<< orphan*/  GMBUS_HW_RDY ; 
 int /*<<< orphan*/  GMBUS_HW_RDY_EN ; 
 int GMBUS_SLAVE_ADDR_SHIFT ; 
 int GMBUS_SLAVE_READ ; 
 int GMBUS_SW_RDY ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 int FUNC2 (struct drm_i915_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct drm_i915_private *dev_priv, struct i2c_msg *msg,
		u32 gmbus1_index)
{
	int reg_offset = dev_priv->gpio_mmio_base;
	u16 len = msg->len;
	u8 *buf = msg->buf;

	FUNC1(GMBUS1 + reg_offset,
		   gmbus1_index |
		   GMBUS_CYCLE_WAIT |
		   (len << GMBUS_BYTE_COUNT_SHIFT) |
		   (msg->addr << GMBUS_SLAVE_ADDR_SHIFT) |
		   GMBUS_SLAVE_READ | GMBUS_SW_RDY);
	while (len) {
		int ret;
		u32 val, loop = 0;

		ret = FUNC2(dev_priv, GMBUS_HW_RDY,
					   GMBUS_HW_RDY_EN);
		if (ret)
			return ret;

		val = FUNC0(GMBUS3 + reg_offset);
		do {
			*buf++ = val & 0xff;
			val >>= 8;
		} while (--len && ++loop < 4);
	}

	return 0;
}