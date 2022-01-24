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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct TYPE_4__ {TYPE_1__* bridge_dev; scalar_t__ registers; } ;
struct TYPE_3__ {scalar_t__ device; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
#define  G33_GMCH_GMS_STOLEN_128M 144 
#define  G33_GMCH_GMS_STOLEN_256M 143 
 int /*<<< orphan*/  I830_GMCH_CTRL ; 
#define  I830_GMCH_GMS_LOCAL 142 
 int I830_GMCH_GMS_MASK ; 
#define  I830_GMCH_GMS_STOLEN_1024 141 
#define  I830_GMCH_GMS_STOLEN_512 140 
#define  I830_GMCH_GMS_STOLEN_8192 139 
 scalar_t__ I830_RDRAM_CHANNEL_TYPE ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int I855_GMCH_GMS_MASK ; 
#define  I855_GMCH_GMS_STOLEN_16M 138 
#define  I855_GMCH_GMS_STOLEN_1M 137 
#define  I855_GMCH_GMS_STOLEN_32M 136 
#define  I855_GMCH_GMS_STOLEN_4M 135 
#define  I855_GMCH_GMS_STOLEN_8M 134 
#define  I915_GMCH_GMS_STOLEN_48M 133 
#define  I915_GMCH_GMS_STOLEN_64M 132 
#define  INTEL_GMCH_GMS_STOLEN_160M 131 
#define  INTEL_GMCH_GMS_STOLEN_224M 130 
#define  INTEL_GMCH_GMS_STOLEN_352M 129 
#define  INTEL_GMCH_GMS_STOLEN_96M 128 
 int INTEL_GTT_GEN ; 
 unsigned int FUNC2 (int) ; 
 unsigned int FUNC3 (int const) ; 
 scalar_t__ PCI_DEVICE_ID_INTEL_82830_HB ; 
 scalar_t__ PCI_DEVICE_ID_INTEL_82845G_HB ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,...) ; 
 TYPE_2__ intel_private ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

__attribute__((used)) static unsigned int FUNC7(void)
{
	u16 gmch_ctrl;
	u8 rdct;
	int local = 0;
	static const int ddt[4] = { 0, 16, 32, 64 };
	unsigned int stolen_size = 0;

	if (INTEL_GTT_GEN == 1)
		return 0; /* no stolen mem on i81x */

	FUNC5(intel_private.bridge_dev,
			     I830_GMCH_CTRL, &gmch_ctrl);

	if (intel_private.bridge_dev->device == PCI_DEVICE_ID_INTEL_82830_HB ||
	    intel_private.bridge_dev->device == PCI_DEVICE_ID_INTEL_82845G_HB) {
		switch (gmch_ctrl & I830_GMCH_GMS_MASK) {
		case I830_GMCH_GMS_STOLEN_512:
			stolen_size = FUNC2(512);
			break;
		case I830_GMCH_GMS_STOLEN_1024:
			stolen_size = FUNC3(1);
			break;
		case I830_GMCH_GMS_STOLEN_8192:
			stolen_size = FUNC3(8);
			break;
		case I830_GMCH_GMS_LOCAL:
			rdct = FUNC6(intel_private.registers+I830_RDRAM_CHANNEL_TYPE);
			stolen_size = (FUNC1(rdct) + 1) *
					FUNC3(ddt[FUNC0(rdct)]);
			local = 1;
			break;
		default:
			stolen_size = 0;
			break;
		}
	} else {
		switch (gmch_ctrl & I855_GMCH_GMS_MASK) {
		case I855_GMCH_GMS_STOLEN_1M:
			stolen_size = FUNC3(1);
			break;
		case I855_GMCH_GMS_STOLEN_4M:
			stolen_size = FUNC3(4);
			break;
		case I855_GMCH_GMS_STOLEN_8M:
			stolen_size = FUNC3(8);
			break;
		case I855_GMCH_GMS_STOLEN_16M:
			stolen_size = FUNC3(16);
			break;
		case I855_GMCH_GMS_STOLEN_32M:
			stolen_size = FUNC3(32);
			break;
		case I915_GMCH_GMS_STOLEN_48M:
			stolen_size = FUNC3(48);
			break;
		case I915_GMCH_GMS_STOLEN_64M:
			stolen_size = FUNC3(64);
			break;
		case G33_GMCH_GMS_STOLEN_128M:
			stolen_size = FUNC3(128);
			break;
		case G33_GMCH_GMS_STOLEN_256M:
			stolen_size = FUNC3(256);
			break;
		case INTEL_GMCH_GMS_STOLEN_96M:
			stolen_size = FUNC3(96);
			break;
		case INTEL_GMCH_GMS_STOLEN_160M:
			stolen_size = FUNC3(160);
			break;
		case INTEL_GMCH_GMS_STOLEN_224M:
			stolen_size = FUNC3(224);
			break;
		case INTEL_GMCH_GMS_STOLEN_352M:
			stolen_size = FUNC3(352);
			break;
		default:
			stolen_size = 0;
			break;
		}
	}

	if (stolen_size > 0) {
		FUNC4(&intel_private.bridge_dev->dev, "detected %dK %s memory\n",
		       stolen_size / FUNC2(1), local ? "local" : "stolen");
	} else {
		FUNC4(&intel_private.bridge_dev->dev,
		       "no pre-allocated video memory detected\n");
		stolen_size = 0;
	}

	return stolen_size;
}