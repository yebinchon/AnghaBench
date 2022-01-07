
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mx3_camera_dev {int dummy; } ;


 int CSI_ACT_FRM_SIZE ;
 int CSI_FLASH_STROBE_1 ;
 int CSI_FLASH_STROBE_2 ;
 int CSI_OUT_FRM_CTRL ;
 int CSI_SENS_FRM_SIZE ;
 int csi_reg_read (struct mx3_camera_dev*,int ) ;
 int csi_reg_write (struct mx3_camera_dev*,int,int ) ;

__attribute__((used)) static void configure_geometry(struct mx3_camera_dev *mx3_cam,
          unsigned int width, unsigned int height)
{
 u32 ctrl, width_field, height_field;


 width_field = width - 1;
 height_field = height - 1;
 csi_reg_write(mx3_cam, width_field | (height_field << 16), CSI_SENS_FRM_SIZE);

 csi_reg_write(mx3_cam, width_field << 16, CSI_FLASH_STROBE_1);
 csi_reg_write(mx3_cam, (height_field << 16) | 0x22, CSI_FLASH_STROBE_2);

 csi_reg_write(mx3_cam, width_field | (height_field << 16), CSI_ACT_FRM_SIZE);


 ctrl = csi_reg_read(mx3_cam, CSI_OUT_FRM_CTRL) & 0xffff0000;

 csi_reg_write(mx3_cam, ctrl | 0 | (0 << 8), CSI_OUT_FRM_CTRL);
}
