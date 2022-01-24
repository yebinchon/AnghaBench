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
typedef  int uint16_t ;
struct radeon_i2c_bus_rec {int valid; } ;
struct radeon_hpd {void* hpd; } ;
struct radeon_device {int flags; scalar_t__ family; } ;
struct drm_device {TYPE_1__* pdev; struct radeon_device* dev_private; } ;
typedef  enum radeon_combios_ddc { ____Placeholder_radeon_combios_ddc } radeon_combios_ddc ;
typedef  enum radeon_combios_connector { ____Placeholder_radeon_combios_connector } radeon_combios_connector ;
struct TYPE_2__ {int device; int subsystem_vendor; int subsystem_device; } ;

/* Variables and functions */
 int ATOM_DEVICE_CRT1_SUPPORT ; 
 int ATOM_DEVICE_CRT2_SUPPORT ; 
 int ATOM_DEVICE_DFP1_SUPPORT ; 
 int ATOM_DEVICE_DFP2_SUPPORT ; 
 int ATOM_DEVICE_LCD1_SUPPORT ; 
 int ATOM_DEVICE_TV1_SUPPORT ; 
 scalar_t__ CHIP_R100 ; 
 scalar_t__ CHIP_R200 ; 
 int /*<<< orphan*/  COMBIOS_CONNECTOR_INFO_TABLE ; 
 int /*<<< orphan*/  COMBIOS_CRT_INFO_TABLE ; 
 int /*<<< orphan*/  COMBIOS_DFP_INFO_TABLE ; 
 int /*<<< orphan*/  COMBIOS_LCD_DDC_INFO_TABLE ; 
 int /*<<< orphan*/  COMBIOS_LCD_INFO_TABLE ; 
 int /*<<< orphan*/  COMBIOS_TV_INFO_TABLE ; 
#define  CONNECTOR_CRT_LEGACY 135 
#define  CONNECTOR_CTV_LEGACY 134 
#define  CONNECTOR_DVI_D_LEGACY 133 
#define  CONNECTOR_DVI_I_LEGACY 132 
 int CONNECTOR_OBJECT_ID_LVDS ; 
 int CONNECTOR_OBJECT_ID_SINGLE_LINK_DVI_D ; 
 int CONNECTOR_OBJECT_ID_SINGLE_LINK_DVI_I ; 
 int CONNECTOR_OBJECT_ID_SVIDEO ; 
 int CONNECTOR_OBJECT_ID_VGA ; 
#define  CONNECTOR_PROPRIETARY_LEGACY 131 
#define  CONNECTOR_STV_LEGACY 130 
 int DDC_DVI ; 
#define  DDC_GPIO 129 
#define  DDC_LCD 128 
 int DDC_VGA ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  DRM_MODE_CONNECTOR_DVII ; 
 int /*<<< orphan*/  DRM_MODE_CONNECTOR_LVDS ; 
 int /*<<< orphan*/  DRM_MODE_CONNECTOR_SVIDEO ; 
 int /*<<< orphan*/  DRM_MODE_CONNECTOR_VGA ; 
 void* RADEON_HPD_1 ; 
 void* RADEON_HPD_2 ; 
 void* RADEON_HPD_NONE ; 
 int RADEON_IS_IGP ; 
 int RADEON_IS_MOBILITY ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 char FUNC4 (int) ; 
 int FUNC5 (struct drm_device*,int) ; 
 int FUNC6 (struct drm_device*,int /*<<< orphan*/ ) ; 
 struct radeon_i2c_bus_rec FUNC7 (struct radeon_device*,int const,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * legacy_connector_convert ; 
 int /*<<< orphan*/  FUNC8 (struct drm_device*,int,int,int /*<<< orphan*/ ,struct radeon_i2c_bus_rec*,int,struct radeon_hpd*) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_device*,int,int*,struct radeon_i2c_bus_rec*,struct radeon_hpd*) ; 
 scalar_t__ FUNC11 (struct drm_device*) ; 
 struct radeon_i2c_bus_rec FUNC12 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct drm_device*,int,int) ; 
 int /*<<< orphan*/  FUNC14 (struct radeon_device*,struct radeon_i2c_bus_rec*,char*) ; 
 int /*<<< orphan*/  FUNC15 (struct drm_device*) ; 

bool FUNC16(struct drm_device *dev)
{
	struct radeon_device *rdev = dev->dev_private;
	uint32_t conn_info, entry, devices;
	uint16_t tmp, connector_object_id;
	enum radeon_combios_ddc ddc_type;
	enum radeon_combios_connector connector;
	int i = 0;
	struct radeon_i2c_bus_rec ddc_i2c;
	struct radeon_hpd hpd;

	conn_info = FUNC6(dev, COMBIOS_CONNECTOR_INFO_TABLE);
	if (conn_info) {
		for (i = 0; i < 4; i++) {
			entry = conn_info + 2 + i * 2;

			if (!FUNC2(entry))
				break;

			tmp = FUNC2(entry);

			connector = (tmp >> 12) & 0xf;

			ddc_type = (tmp >> 8) & 0xf;
			if (ddc_type == 5)
				ddc_i2c = FUNC12(rdev);
			else
				ddc_i2c = FUNC7(rdev, ddc_type, 0, 0);

			switch (connector) {
			case CONNECTOR_PROPRIETARY_LEGACY:
			case CONNECTOR_DVI_I_LEGACY:
			case CONNECTOR_DVI_D_LEGACY:
				if ((tmp >> 4) & 0x1)
					hpd.hpd = RADEON_HPD_2;
				else
					hpd.hpd = RADEON_HPD_1;
				break;
			default:
				hpd.hpd = RADEON_HPD_NONE;
				break;
			}

			if (!FUNC10(dev, i, &connector,
							&ddc_i2c, &hpd))
				continue;

			switch (connector) {
			case CONNECTOR_PROPRIETARY_LEGACY:
				if ((tmp >> 4) & 0x1)
					devices = ATOM_DEVICE_DFP2_SUPPORT;
				else
					devices = ATOM_DEVICE_DFP1_SUPPORT;
				FUNC9(dev,
							  FUNC13
							  (dev, devices, 0),
							  devices);
				FUNC8(dev, i, devices,
							    legacy_connector_convert
							    [connector],
							    &ddc_i2c,
							    CONNECTOR_OBJECT_ID_SINGLE_LINK_DVI_D,
							    &hpd);
				break;
			case CONNECTOR_CRT_LEGACY:
				if (tmp & 0x1) {
					devices = ATOM_DEVICE_CRT2_SUPPORT;
					FUNC9(dev,
								  FUNC13
								  (dev,
								   ATOM_DEVICE_CRT2_SUPPORT,
								   2),
								  ATOM_DEVICE_CRT2_SUPPORT);
				} else {
					devices = ATOM_DEVICE_CRT1_SUPPORT;
					FUNC9(dev,
								  FUNC13
								  (dev,
								   ATOM_DEVICE_CRT1_SUPPORT,
								   1),
								  ATOM_DEVICE_CRT1_SUPPORT);
				}
				FUNC8(dev,
							    i,
							    devices,
							    legacy_connector_convert
							    [connector],
							    &ddc_i2c,
							    CONNECTOR_OBJECT_ID_VGA,
							    &hpd);
				break;
			case CONNECTOR_DVI_I_LEGACY:
				devices = 0;
				if (tmp & 0x1) {
					devices |= ATOM_DEVICE_CRT2_SUPPORT;
					FUNC9(dev,
								  FUNC13
								  (dev,
								   ATOM_DEVICE_CRT2_SUPPORT,
								   2),
								  ATOM_DEVICE_CRT2_SUPPORT);
				} else {
					devices |= ATOM_DEVICE_CRT1_SUPPORT;
					FUNC9(dev,
								  FUNC13
								  (dev,
								   ATOM_DEVICE_CRT1_SUPPORT,
								   1),
								  ATOM_DEVICE_CRT1_SUPPORT);
				}
				/* RV100 board with external TDMS bit mis-set.
				 * Actually uses internal TMDS, clear the bit.
				 */
				if (dev->pdev->device == 0x5159 &&
				    dev->pdev->subsystem_vendor == 0x1014 &&
				    dev->pdev->subsystem_device == 0x029A) {
					tmp &= ~(1 << 4);
				}
				if ((tmp >> 4) & 0x1) {
					devices |= ATOM_DEVICE_DFP2_SUPPORT;
					FUNC9(dev,
								  FUNC13
								  (dev,
								   ATOM_DEVICE_DFP2_SUPPORT,
								   0),
								  ATOM_DEVICE_DFP2_SUPPORT);
					connector_object_id = FUNC5(dev, 0);
				} else {
					devices |= ATOM_DEVICE_DFP1_SUPPORT;
					FUNC9(dev,
								  FUNC13
								  (dev,
								   ATOM_DEVICE_DFP1_SUPPORT,
								   0),
								  ATOM_DEVICE_DFP1_SUPPORT);
					connector_object_id = CONNECTOR_OBJECT_ID_SINGLE_LINK_DVI_I;
				}
				FUNC8(dev,
							    i,
							    devices,
							    legacy_connector_convert
							    [connector],
							    &ddc_i2c,
							    connector_object_id,
							    &hpd);
				break;
			case CONNECTOR_DVI_D_LEGACY:
				if ((tmp >> 4) & 0x1) {
					devices = ATOM_DEVICE_DFP2_SUPPORT;
					connector_object_id = FUNC5(dev, 1);
				} else {
					devices = ATOM_DEVICE_DFP1_SUPPORT;
					connector_object_id = CONNECTOR_OBJECT_ID_SINGLE_LINK_DVI_I;
				}
				FUNC9(dev,
							  FUNC13
							  (dev, devices, 0),
							  devices);
				FUNC8(dev, i, devices,
							    legacy_connector_convert
							    [connector],
							    &ddc_i2c,
							    connector_object_id,
							    &hpd);
				break;
			case CONNECTOR_CTV_LEGACY:
			case CONNECTOR_STV_LEGACY:
				FUNC9(dev,
							  FUNC13
							  (dev,
							   ATOM_DEVICE_TV1_SUPPORT,
							   2),
							  ATOM_DEVICE_TV1_SUPPORT);
				FUNC8(dev, i,
							    ATOM_DEVICE_TV1_SUPPORT,
							    legacy_connector_convert
							    [connector],
							    &ddc_i2c,
							    CONNECTOR_OBJECT_ID_SVIDEO,
							    &hpd);
				break;
			default:
				FUNC1("Unknown connector type: %d\n",
					  connector);
				continue;
			}

		}
	} else {
		uint16_t tmds_info =
		    FUNC6(dev, COMBIOS_DFP_INFO_TABLE);
		if (tmds_info) {
			FUNC0("Found DFP table, assuming DVI connector\n");

			FUNC9(dev,
						  FUNC13(dev,
									ATOM_DEVICE_CRT1_SUPPORT,
									1),
						  ATOM_DEVICE_CRT1_SUPPORT);
			FUNC9(dev,
						  FUNC13(dev,
									ATOM_DEVICE_DFP1_SUPPORT,
									0),
						  ATOM_DEVICE_DFP1_SUPPORT);

			ddc_i2c = FUNC7(rdev, DDC_DVI, 0, 0);
			hpd.hpd = RADEON_HPD_1;
			FUNC8(dev,
						    0,
						    ATOM_DEVICE_CRT1_SUPPORT |
						    ATOM_DEVICE_DFP1_SUPPORT,
						    DRM_MODE_CONNECTOR_DVII,
						    &ddc_i2c,
						    CONNECTOR_OBJECT_ID_SINGLE_LINK_DVI_I,
						    &hpd);
		} else {
			uint16_t crt_info =
				FUNC6(dev, COMBIOS_CRT_INFO_TABLE);
			FUNC0("Found CRT table, assuming VGA connector\n");
			if (crt_info) {
				FUNC9(dev,
							  FUNC13(dev,
										ATOM_DEVICE_CRT1_SUPPORT,
										1),
							  ATOM_DEVICE_CRT1_SUPPORT);
				ddc_i2c = FUNC7(rdev, DDC_VGA, 0, 0);
				hpd.hpd = RADEON_HPD_NONE;
				FUNC8(dev,
							    0,
							    ATOM_DEVICE_CRT1_SUPPORT,
							    DRM_MODE_CONNECTOR_VGA,
							    &ddc_i2c,
							    CONNECTOR_OBJECT_ID_VGA,
							    &hpd);
			} else {
				FUNC0("No connector info found\n");
				return false;
			}
		}
	}

	if (rdev->flags & RADEON_IS_MOBILITY || rdev->flags & RADEON_IS_IGP) {
		uint16_t lcd_info =
		    FUNC6(dev, COMBIOS_LCD_INFO_TABLE);
		if (lcd_info) {
			uint16_t lcd_ddc_info =
			    FUNC6(dev,
						     COMBIOS_LCD_DDC_INFO_TABLE);

			FUNC9(dev,
						  FUNC13(dev,
									ATOM_DEVICE_LCD1_SUPPORT,
									0),
						  ATOM_DEVICE_LCD1_SUPPORT);

			if (lcd_ddc_info) {
				ddc_type = FUNC4(lcd_ddc_info + 2);
				switch (ddc_type) {
				case DDC_LCD:
					ddc_i2c =
						FUNC7(rdev,
								      DDC_LCD,
								      FUNC3(lcd_ddc_info + 3),
								      FUNC3(lcd_ddc_info + 7));
					FUNC14(rdev, &ddc_i2c, "LCD");
					break;
				case DDC_GPIO:
					ddc_i2c =
						FUNC7(rdev,
								      DDC_GPIO,
								      FUNC3(lcd_ddc_info + 3),
								      FUNC3(lcd_ddc_info + 7));
					FUNC14(rdev, &ddc_i2c, "LCD");
					break;
				default:
					ddc_i2c =
						FUNC7(rdev, ddc_type, 0, 0);
					break;
				}
				FUNC0("LCD DDC Info Table found!\n");
			} else
				ddc_i2c.valid = false;

			hpd.hpd = RADEON_HPD_NONE;
			FUNC8(dev,
						    5,
						    ATOM_DEVICE_LCD1_SUPPORT,
						    DRM_MODE_CONNECTOR_LVDS,
						    &ddc_i2c,
						    CONNECTOR_OBJECT_ID_LVDS,
						    &hpd);
		}
	}

	/* check TV table */
	if (rdev->family != CHIP_R100 && rdev->family != CHIP_R200) {
		uint32_t tv_info =
		    FUNC6(dev, COMBIOS_TV_INFO_TABLE);
		if (tv_info) {
			if (FUNC4(tv_info + 6) == 'T') {
				if (FUNC11(dev)) {
					hpd.hpd = RADEON_HPD_NONE;
					ddc_i2c.valid = false;
					FUNC9(dev,
								  FUNC13
								  (dev,
								   ATOM_DEVICE_TV1_SUPPORT,
								   2),
								  ATOM_DEVICE_TV1_SUPPORT);
					FUNC8(dev, 6,
								    ATOM_DEVICE_TV1_SUPPORT,
								    DRM_MODE_CONNECTOR_SVIDEO,
								    &ddc_i2c,
								    CONNECTOR_OBJECT_ID_SVIDEO,
								    &hpd);
				}
			}
		}
	}

	FUNC15(dev);

	return true;
}