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
struct nouveau_device {int chipset; char* cname; int /*<<< orphan*/ ** oclass; } ;

/* Variables and functions */
 int EINVAL ; 
 size_t NVDEV_ENGINE_DISP ; 
 size_t NVDEV_ENGINE_DMAOBJ ; 
 size_t NVDEV_ENGINE_FIFO ; 
 size_t NVDEV_ENGINE_GR ; 
 size_t NVDEV_ENGINE_SW ; 
 size_t NVDEV_SUBDEV_BUS ; 
 size_t NVDEV_SUBDEV_CLOCK ; 
 size_t NVDEV_SUBDEV_DEVINIT ; 
 size_t NVDEV_SUBDEV_FB ; 
 size_t NVDEV_SUBDEV_GPIO ; 
 size_t NVDEV_SUBDEV_I2C ; 
 size_t NVDEV_SUBDEV_INSTMEM ; 
 size_t NVDEV_SUBDEV_MC ; 
 size_t NVDEV_SUBDEV_TIMER ; 
 size_t NVDEV_SUBDEV_VBIOS ; 
 size_t NVDEV_SUBDEV_VM ; 
 int /*<<< orphan*/  nouveau_bios_oclass ; 
 int /*<<< orphan*/  nv04_bus_oclass ; 
 int /*<<< orphan*/  nv04_clock_oclass ; 
 int /*<<< orphan*/  nv04_disp_oclass ; 
 int /*<<< orphan*/  nv04_dmaeng_oclass ; 
 int /*<<< orphan*/  nv04_i2c_oclass ; 
 int /*<<< orphan*/  nv04_instmem_oclass ; 
 int /*<<< orphan*/  nv04_mc_oclass ; 
 int /*<<< orphan*/  nv04_timer_oclass ; 
 int /*<<< orphan*/  nv04_vmmgr_oclass ; 
 int /*<<< orphan*/  nv10_gpio_oclass ; 
 int /*<<< orphan*/  nv10_software_oclass ; 
 int /*<<< orphan*/  nv17_fifo_oclass ; 
 int /*<<< orphan*/  nv20_devinit_oclass ; 
 int /*<<< orphan*/  nv20_fb_oclass ; 
 int /*<<< orphan*/  nv20_graph_oclass ; 
 int /*<<< orphan*/  nv25_fb_oclass ; 
 int /*<<< orphan*/  nv25_graph_oclass ; 
 int /*<<< orphan*/  nv2a_graph_oclass ; 
 int /*<<< orphan*/  FUNC0 (struct nouveau_device*,char*) ; 

int
FUNC1(struct nouveau_device *device)
{
	switch (device->chipset) {
	case 0x20:
		device->cname = "NV20";
		device->oclass[NVDEV_SUBDEV_VBIOS  ] = &nouveau_bios_oclass;
		device->oclass[NVDEV_SUBDEV_GPIO   ] = &nv10_gpio_oclass;
		device->oclass[NVDEV_SUBDEV_I2C    ] = &nv04_i2c_oclass;
		device->oclass[NVDEV_SUBDEV_CLOCK  ] = &nv04_clock_oclass;
		device->oclass[NVDEV_SUBDEV_DEVINIT] = &nv20_devinit_oclass;
		device->oclass[NVDEV_SUBDEV_MC     ] = &nv04_mc_oclass;
		device->oclass[NVDEV_SUBDEV_BUS    ] = &nv04_bus_oclass;
		device->oclass[NVDEV_SUBDEV_TIMER  ] = &nv04_timer_oclass;
		device->oclass[NVDEV_SUBDEV_FB     ] = &nv20_fb_oclass;
		device->oclass[NVDEV_SUBDEV_INSTMEM] = &nv04_instmem_oclass;
		device->oclass[NVDEV_SUBDEV_VM     ] = &nv04_vmmgr_oclass;
		device->oclass[NVDEV_ENGINE_DMAOBJ ] = &nv04_dmaeng_oclass;
		device->oclass[NVDEV_ENGINE_FIFO   ] = &nv17_fifo_oclass;
		device->oclass[NVDEV_ENGINE_SW     ] = &nv10_software_oclass;
		device->oclass[NVDEV_ENGINE_GR     ] = &nv20_graph_oclass;
		device->oclass[NVDEV_ENGINE_DISP   ] = &nv04_disp_oclass;
		break;
	case 0x25:
		device->cname = "NV25";
		device->oclass[NVDEV_SUBDEV_VBIOS  ] = &nouveau_bios_oclass;
		device->oclass[NVDEV_SUBDEV_GPIO   ] = &nv10_gpio_oclass;
		device->oclass[NVDEV_SUBDEV_I2C    ] = &nv04_i2c_oclass;
		device->oclass[NVDEV_SUBDEV_CLOCK  ] = &nv04_clock_oclass;
		device->oclass[NVDEV_SUBDEV_DEVINIT] = &nv20_devinit_oclass;
		device->oclass[NVDEV_SUBDEV_MC     ] = &nv04_mc_oclass;
		device->oclass[NVDEV_SUBDEV_BUS    ] = &nv04_bus_oclass;
		device->oclass[NVDEV_SUBDEV_TIMER  ] = &nv04_timer_oclass;
		device->oclass[NVDEV_SUBDEV_FB     ] = &nv25_fb_oclass;
		device->oclass[NVDEV_SUBDEV_INSTMEM] = &nv04_instmem_oclass;
		device->oclass[NVDEV_SUBDEV_VM     ] = &nv04_vmmgr_oclass;
		device->oclass[NVDEV_ENGINE_DMAOBJ ] = &nv04_dmaeng_oclass;
		device->oclass[NVDEV_ENGINE_FIFO   ] = &nv17_fifo_oclass;
		device->oclass[NVDEV_ENGINE_SW     ] = &nv10_software_oclass;
		device->oclass[NVDEV_ENGINE_GR     ] = &nv25_graph_oclass;
		device->oclass[NVDEV_ENGINE_DISP   ] = &nv04_disp_oclass;
		break;
	case 0x28:
		device->cname = "NV28";
		device->oclass[NVDEV_SUBDEV_VBIOS  ] = &nouveau_bios_oclass;
		device->oclass[NVDEV_SUBDEV_GPIO   ] = &nv10_gpio_oclass;
		device->oclass[NVDEV_SUBDEV_I2C    ] = &nv04_i2c_oclass;
		device->oclass[NVDEV_SUBDEV_CLOCK  ] = &nv04_clock_oclass;
		device->oclass[NVDEV_SUBDEV_DEVINIT] = &nv20_devinit_oclass;
		device->oclass[NVDEV_SUBDEV_MC     ] = &nv04_mc_oclass;
		device->oclass[NVDEV_SUBDEV_BUS    ] = &nv04_bus_oclass;
		device->oclass[NVDEV_SUBDEV_TIMER  ] = &nv04_timer_oclass;
		device->oclass[NVDEV_SUBDEV_FB     ] = &nv25_fb_oclass;
		device->oclass[NVDEV_SUBDEV_INSTMEM] = &nv04_instmem_oclass;
		device->oclass[NVDEV_SUBDEV_VM     ] = &nv04_vmmgr_oclass;
		device->oclass[NVDEV_ENGINE_DMAOBJ ] = &nv04_dmaeng_oclass;
		device->oclass[NVDEV_ENGINE_FIFO   ] = &nv17_fifo_oclass;
		device->oclass[NVDEV_ENGINE_SW     ] = &nv10_software_oclass;
		device->oclass[NVDEV_ENGINE_GR     ] = &nv25_graph_oclass;
		device->oclass[NVDEV_ENGINE_DISP   ] = &nv04_disp_oclass;
		break;
	case 0x2a:
		device->cname = "NV2A";
		device->oclass[NVDEV_SUBDEV_VBIOS  ] = &nouveau_bios_oclass;
		device->oclass[NVDEV_SUBDEV_GPIO   ] = &nv10_gpio_oclass;
		device->oclass[NVDEV_SUBDEV_I2C    ] = &nv04_i2c_oclass;
		device->oclass[NVDEV_SUBDEV_CLOCK  ] = &nv04_clock_oclass;
		device->oclass[NVDEV_SUBDEV_DEVINIT] = &nv20_devinit_oclass;
		device->oclass[NVDEV_SUBDEV_MC     ] = &nv04_mc_oclass;
		device->oclass[NVDEV_SUBDEV_BUS    ] = &nv04_bus_oclass;
		device->oclass[NVDEV_SUBDEV_TIMER  ] = &nv04_timer_oclass;
		device->oclass[NVDEV_SUBDEV_FB     ] = &nv25_fb_oclass;
		device->oclass[NVDEV_SUBDEV_INSTMEM] = &nv04_instmem_oclass;
		device->oclass[NVDEV_SUBDEV_VM     ] = &nv04_vmmgr_oclass;
		device->oclass[NVDEV_ENGINE_DMAOBJ ] = &nv04_dmaeng_oclass;
		device->oclass[NVDEV_ENGINE_FIFO   ] = &nv17_fifo_oclass;
		device->oclass[NVDEV_ENGINE_SW     ] = &nv10_software_oclass;
		device->oclass[NVDEV_ENGINE_GR     ] = &nv2a_graph_oclass;
		device->oclass[NVDEV_ENGINE_DISP   ] = &nv04_disp_oclass;
		break;
	default:
		FUNC0(device, "unknown Kelvin chipset\n");
		return -EINVAL;
	}

	return 0;
}