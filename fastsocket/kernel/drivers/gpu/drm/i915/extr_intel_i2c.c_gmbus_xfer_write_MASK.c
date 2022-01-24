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
 int GMBUS_SLAVE_WRITE ; 
 int GMBUS_SW_RDY ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 
 int FUNC1 (struct drm_i915_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct drm_i915_private *dev_priv, struct i2c_msg *msg)
{
	int reg_offset = dev_priv->gpio_mmio_base;
	u16 len = msg->len;
	u8 *buf = msg->buf;
	u32 val, loop;

	val = loop = 0;
	while (len && loop < 4) {
		val |= *buf++ << (8 * loop++);
		len -= 1;
	}

	FUNC0(GMBUS3 + reg_offset, val);
	FUNC0(GMBUS1 + reg_offset,
		   GMBUS_CYCLE_WAIT |
		   (msg->len << GMBUS_BYTE_COUNT_SHIFT) |
		   (msg->addr << GMBUS_SLAVE_ADDR_SHIFT) |
		   GMBUS_SLAVE_WRITE | GMBUS_SW_RDY);
	while (len) {
		int ret;

		val = loop = 0;
		do {
			val |= *buf++ << (8 * loop);
		} while (--len && ++loop < 4);

		FUNC0(GMBUS3 + reg_offset, val);

		ret = FUNC1(dev_priv, GMBUS_HW_RDY,
					   GMBUS_HW_RDY_EN);
		if (ret)
			return ret;
	}
	return 0;
}