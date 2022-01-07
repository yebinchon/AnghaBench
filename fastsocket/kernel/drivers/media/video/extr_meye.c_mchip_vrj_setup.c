
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int MCHIP_VRJ_BUS_MODE ;
 int MCHIP_VRJ_COMP_DATA_FORMAT ;
 int MCHIP_VRJ_IRQ_FLAG ;
 int MCHIP_VRJ_LIMIT_COMPRESSED_HI ;
 int MCHIP_VRJ_LIMIT_COMPRESSED_LO ;
 int MCHIP_VRJ_MODE_SPECIFY ;
 int MCHIP_VRJ_NUM_COMPONENTS ;
 int MCHIP_VRJ_NUM_LINES ;
 int MCHIP_VRJ_NUM_PIXELS ;
 int MCHIP_VRJ_PDAT_USE ;
 int MCHIP_VRJ_RESTART_INTERVAL ;
 int MCHIP_VRJ_SIGNAL_ACTIVE_LEVEL ;
 int MCHIP_VRJ_SOF1 ;
 int MCHIP_VRJ_SOF2 ;
 int MCHIP_VRJ_SOF3 ;
 int MCHIP_VRJ_SOF4 ;
 int MCHIP_VRJ_SOS ;
 int mchip_hsize () ;
 int mchip_load_tables () ;
 int mchip_set (int ,int) ;
 int mchip_vsize () ;

__attribute__((used)) static void mchip_vrj_setup(u8 mode)
{
 mchip_set(MCHIP_VRJ_BUS_MODE, 5);
 mchip_set(MCHIP_VRJ_SIGNAL_ACTIVE_LEVEL, 0x1f);
 mchip_set(MCHIP_VRJ_PDAT_USE, 1);
 mchip_set(MCHIP_VRJ_IRQ_FLAG, 0xa0);
 mchip_set(MCHIP_VRJ_MODE_SPECIFY, mode);
 mchip_set(MCHIP_VRJ_NUM_LINES, mchip_vsize());
 mchip_set(MCHIP_VRJ_NUM_PIXELS, mchip_hsize());
 mchip_set(MCHIP_VRJ_NUM_COMPONENTS, 0x1b);
 mchip_set(MCHIP_VRJ_LIMIT_COMPRESSED_LO, 0xFFFF);
 mchip_set(MCHIP_VRJ_LIMIT_COMPRESSED_HI, 0xFFFF);
 mchip_set(MCHIP_VRJ_COMP_DATA_FORMAT, 0xC);
 mchip_set(MCHIP_VRJ_RESTART_INTERVAL, 0);
 mchip_set(MCHIP_VRJ_SOF1, 0x601);
 mchip_set(MCHIP_VRJ_SOF2, 0x1502);
 mchip_set(MCHIP_VRJ_SOF3, 0x1503);
 mchip_set(MCHIP_VRJ_SOF4, 0x1596);
 mchip_set(MCHIP_VRJ_SOS, 0x0ed0);

 mchip_load_tables();
}
