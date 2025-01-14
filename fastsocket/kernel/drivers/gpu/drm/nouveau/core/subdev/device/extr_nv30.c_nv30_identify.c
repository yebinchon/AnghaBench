
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_device {int chipset; char* cname; int ** oclass; } ;


 int EINVAL ;
 size_t NVDEV_ENGINE_DISP ;
 size_t NVDEV_ENGINE_DMAOBJ ;
 size_t NVDEV_ENGINE_FIFO ;
 size_t NVDEV_ENGINE_GR ;
 size_t NVDEV_ENGINE_MPEG ;
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
 int nouveau_bios_oclass ;
 int nv04_bus_oclass ;
 int nv04_clock_oclass ;
 int nv04_disp_oclass ;
 int nv04_dmaeng_oclass ;
 int nv04_i2c_oclass ;
 int nv04_instmem_oclass ;
 int nv04_mc_oclass ;
 int nv04_timer_oclass ;
 int nv04_vmmgr_oclass ;
 int nv10_devinit_oclass ;
 int nv10_fb_oclass ;
 int nv10_gpio_oclass ;
 int nv10_software_oclass ;
 int nv17_fifo_oclass ;
 int nv20_devinit_oclass ;
 int nv30_fb_oclass ;
 int nv30_graph_oclass ;
 int nv31_bus_oclass ;
 int nv31_mpeg_oclass ;
 int nv34_graph_oclass ;
 int nv35_fb_oclass ;
 int nv35_graph_oclass ;
 int nv36_fb_oclass ;
 int nv_fatal (struct nouveau_device*,char*) ;

int
nv30_identify(struct nouveau_device *device)
{
 switch (device->chipset) {
 case 0x30:
  device->cname = "NV30";
  device->oclass[NVDEV_SUBDEV_VBIOS ] = &nouveau_bios_oclass;
  device->oclass[NVDEV_SUBDEV_GPIO ] = &nv10_gpio_oclass;
  device->oclass[NVDEV_SUBDEV_I2C ] = &nv04_i2c_oclass;
  device->oclass[NVDEV_SUBDEV_CLOCK ] = &nv04_clock_oclass;
  device->oclass[NVDEV_SUBDEV_DEVINIT] = &nv20_devinit_oclass;
  device->oclass[NVDEV_SUBDEV_MC ] = &nv04_mc_oclass;
  device->oclass[NVDEV_SUBDEV_BUS ] = &nv04_bus_oclass;
  device->oclass[NVDEV_SUBDEV_TIMER ] = &nv04_timer_oclass;
  device->oclass[NVDEV_SUBDEV_FB ] = &nv30_fb_oclass;
  device->oclass[NVDEV_SUBDEV_INSTMEM] = &nv04_instmem_oclass;
  device->oclass[NVDEV_SUBDEV_VM ] = &nv04_vmmgr_oclass;
  device->oclass[NVDEV_ENGINE_DMAOBJ ] = &nv04_dmaeng_oclass;
  device->oclass[NVDEV_ENGINE_FIFO ] = &nv17_fifo_oclass;
  device->oclass[NVDEV_ENGINE_SW ] = &nv10_software_oclass;
  device->oclass[NVDEV_ENGINE_GR ] = &nv30_graph_oclass;
  device->oclass[NVDEV_ENGINE_DISP ] = &nv04_disp_oclass;
  break;
 case 0x35:
  device->cname = "NV35";
  device->oclass[NVDEV_SUBDEV_VBIOS ] = &nouveau_bios_oclass;
  device->oclass[NVDEV_SUBDEV_GPIO ] = &nv10_gpio_oclass;
  device->oclass[NVDEV_SUBDEV_I2C ] = &nv04_i2c_oclass;
  device->oclass[NVDEV_SUBDEV_CLOCK ] = &nv04_clock_oclass;
  device->oclass[NVDEV_SUBDEV_DEVINIT] = &nv20_devinit_oclass;
  device->oclass[NVDEV_SUBDEV_MC ] = &nv04_mc_oclass;
  device->oclass[NVDEV_SUBDEV_BUS ] = &nv04_bus_oclass;
  device->oclass[NVDEV_SUBDEV_TIMER ] = &nv04_timer_oclass;
  device->oclass[NVDEV_SUBDEV_FB ] = &nv35_fb_oclass;
  device->oclass[NVDEV_SUBDEV_INSTMEM] = &nv04_instmem_oclass;
  device->oclass[NVDEV_SUBDEV_VM ] = &nv04_vmmgr_oclass;
  device->oclass[NVDEV_ENGINE_DMAOBJ ] = &nv04_dmaeng_oclass;
  device->oclass[NVDEV_ENGINE_FIFO ] = &nv17_fifo_oclass;
  device->oclass[NVDEV_ENGINE_SW ] = &nv10_software_oclass;
  device->oclass[NVDEV_ENGINE_GR ] = &nv35_graph_oclass;
  device->oclass[NVDEV_ENGINE_DISP ] = &nv04_disp_oclass;
  break;
 case 0x31:
  device->cname = "NV31";
  device->oclass[NVDEV_SUBDEV_VBIOS ] = &nouveau_bios_oclass;
  device->oclass[NVDEV_SUBDEV_GPIO ] = &nv10_gpio_oclass;
  device->oclass[NVDEV_SUBDEV_I2C ] = &nv04_i2c_oclass;
  device->oclass[NVDEV_SUBDEV_CLOCK ] = &nv04_clock_oclass;
  device->oclass[NVDEV_SUBDEV_DEVINIT] = &nv20_devinit_oclass;
  device->oclass[NVDEV_SUBDEV_MC ] = &nv04_mc_oclass;
  device->oclass[NVDEV_SUBDEV_BUS ] = &nv31_bus_oclass;
  device->oclass[NVDEV_SUBDEV_TIMER ] = &nv04_timer_oclass;
  device->oclass[NVDEV_SUBDEV_FB ] = &nv30_fb_oclass;
  device->oclass[NVDEV_SUBDEV_INSTMEM] = &nv04_instmem_oclass;
  device->oclass[NVDEV_SUBDEV_VM ] = &nv04_vmmgr_oclass;
  device->oclass[NVDEV_ENGINE_DMAOBJ ] = &nv04_dmaeng_oclass;
  device->oclass[NVDEV_ENGINE_FIFO ] = &nv17_fifo_oclass;
  device->oclass[NVDEV_ENGINE_SW ] = &nv10_software_oclass;
  device->oclass[NVDEV_ENGINE_GR ] = &nv30_graph_oclass;
  device->oclass[NVDEV_ENGINE_MPEG ] = &nv31_mpeg_oclass;
  device->oclass[NVDEV_ENGINE_DISP ] = &nv04_disp_oclass;
  break;
 case 0x36:
  device->cname = "NV36";
  device->oclass[NVDEV_SUBDEV_VBIOS ] = &nouveau_bios_oclass;
  device->oclass[NVDEV_SUBDEV_GPIO ] = &nv10_gpio_oclass;
  device->oclass[NVDEV_SUBDEV_I2C ] = &nv04_i2c_oclass;
  device->oclass[NVDEV_SUBDEV_CLOCK ] = &nv04_clock_oclass;
  device->oclass[NVDEV_SUBDEV_DEVINIT] = &nv20_devinit_oclass;
  device->oclass[NVDEV_SUBDEV_MC ] = &nv04_mc_oclass;
  device->oclass[NVDEV_SUBDEV_BUS ] = &nv31_bus_oclass;
  device->oclass[NVDEV_SUBDEV_TIMER ] = &nv04_timer_oclass;
  device->oclass[NVDEV_SUBDEV_FB ] = &nv36_fb_oclass;
  device->oclass[NVDEV_SUBDEV_INSTMEM] = &nv04_instmem_oclass;
  device->oclass[NVDEV_SUBDEV_VM ] = &nv04_vmmgr_oclass;
  device->oclass[NVDEV_ENGINE_DMAOBJ ] = &nv04_dmaeng_oclass;
  device->oclass[NVDEV_ENGINE_FIFO ] = &nv17_fifo_oclass;
  device->oclass[NVDEV_ENGINE_SW ] = &nv10_software_oclass;
  device->oclass[NVDEV_ENGINE_GR ] = &nv35_graph_oclass;
  device->oclass[NVDEV_ENGINE_MPEG ] = &nv31_mpeg_oclass;
  device->oclass[NVDEV_ENGINE_DISP ] = &nv04_disp_oclass;
  break;
 case 0x34:
  device->cname = "NV34";
  device->oclass[NVDEV_SUBDEV_VBIOS ] = &nouveau_bios_oclass;
  device->oclass[NVDEV_SUBDEV_GPIO ] = &nv10_gpio_oclass;
  device->oclass[NVDEV_SUBDEV_I2C ] = &nv04_i2c_oclass;
  device->oclass[NVDEV_SUBDEV_CLOCK ] = &nv04_clock_oclass;
  device->oclass[NVDEV_SUBDEV_DEVINIT] = &nv10_devinit_oclass;
  device->oclass[NVDEV_SUBDEV_MC ] = &nv04_mc_oclass;
  device->oclass[NVDEV_SUBDEV_BUS ] = &nv31_bus_oclass;
  device->oclass[NVDEV_SUBDEV_TIMER ] = &nv04_timer_oclass;
  device->oclass[NVDEV_SUBDEV_FB ] = &nv10_fb_oclass;
  device->oclass[NVDEV_SUBDEV_INSTMEM] = &nv04_instmem_oclass;
  device->oclass[NVDEV_SUBDEV_VM ] = &nv04_vmmgr_oclass;
  device->oclass[NVDEV_ENGINE_DMAOBJ ] = &nv04_dmaeng_oclass;
  device->oclass[NVDEV_ENGINE_FIFO ] = &nv17_fifo_oclass;
  device->oclass[NVDEV_ENGINE_SW ] = &nv10_software_oclass;
  device->oclass[NVDEV_ENGINE_GR ] = &nv34_graph_oclass;
  device->oclass[NVDEV_ENGINE_MPEG ] = &nv31_mpeg_oclass;
  device->oclass[NVDEV_ENGINE_DISP ] = &nv04_disp_oclass;
  break;
 default:
  nv_fatal(device, "unknown Rankine chipset\n");
  return -EINVAL;
 }

 return 0;
}
