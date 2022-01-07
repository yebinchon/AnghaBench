
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef void* u8 ;
struct TYPE_8__ {TYPE_2__* registers; } ;
struct cpia2_command {int req_mode; int reg_count; TYPE_3__ buffer; int direction; } ;
struct TYPE_9__ {int width; int height; } ;
struct TYPE_6__ {scalar_t__ device_type; } ;
struct TYPE_10__ {TYPE_4__ roi; TYPE_1__ pnp_id; } ;
struct camera_data {TYPE_5__ params; } ;
struct TYPE_7__ {int value; int index; } ;


 int CAMERAACCESS_TYPE_RANDOM ;
 int CAMERAACCESS_VC ;
 int CPIA2_VC_VC_672_CLOCKS_CIF_DIV_BY_3 ;
 int CPIA2_VC_VC_672_CLOCKS_SCALING ;
 int CPIA2_VC_VC_676_CLOCKS_CIF_DIV_BY_3 ;
 int CPIA2_VC_VC_676_CLOCKS_SCALING ;
 int CPIA2_VC_VC_CLOCKS ;
 int CPIA2_VC_VC_CLOCKS_LOGDIV0 ;
 int CPIA2_VC_VC_CLOCKS_LOGDIV2 ;
 int CPIA2_VC_VC_FORMAT ;
 int CPIA2_VC_VC_FORMAT_SHORTLINE ;
 int CPIA2_VC_VC_FORMAT_UFIRST ;
 int CPIA2_VC_VC_HCROP ;
 int CPIA2_VC_VC_HFRACT ;
 int CPIA2_VC_VC_HICROP ;
 int CPIA2_VC_VC_HISPAN ;
 int CPIA2_VC_VC_HPHASE ;
 int CPIA2_VC_VC_IHSIZE_LO ;
 int CPIA2_VC_VC_OHSIZE ;
 int CPIA2_VC_VC_OVSIZE ;
 int CPIA2_VC_VC_VCROP ;
 int CPIA2_VC_VC_VFRACT ;
 int CPIA2_VC_VC_VICROP ;
 int CPIA2_VC_VC_VISPAN ;
 int CPIA2_VC_VC_VPHASE ;
 int CPIA2_VC_VC_XLIM_HI ;
 int CPIA2_VC_VC_XLIM_LO ;
 int CPIA2_VC_VC_YLIM_HI ;
 int CPIA2_VC_VC_YLIM_LO ;
 int DBG (char*,...) ;
 scalar_t__ DEVICE_STV_672 ;
 int EINVAL ;
 int ERR (char*) ;
 int STV_IMAGE_CIF_COLS ;
 int STV_IMAGE_CIF_ROWS ;
 int STV_IMAGE_QCIF_COLS ;
 int STV_IMAGE_QCIF_ROWS ;
 int TRANSFER_WRITE ;
 int VIDEOSIZE_CIF ;
 int VIDEOSIZE_QCIF ;
 int VIDEOSIZE_QVGA ;
 int cpia2_match_video_size (int,int) ;
 int cpia2_send_command (struct camera_data*,struct cpia2_command*) ;
 int set_vw_size (struct camera_data*,int) ;

__attribute__((used)) static int config_sensor_410(struct camera_data *cam,
       int req_width, int req_height)
{
 struct cpia2_command cmd;
 int i = 0;
 int image_size;
 int image_type;
 int width = req_width;
 int height = req_height;




 if (width > STV_IMAGE_CIF_COLS)
  width = STV_IMAGE_CIF_COLS;
 if (height > STV_IMAGE_CIF_ROWS)
  height = STV_IMAGE_CIF_ROWS;

 image_size = cpia2_match_video_size(width, height);

 DBG("Config 410: width = %d, height = %d\n", width, height);
 DBG("Image size returned is %d\n", image_size);
 if (image_size >= 0) {
  set_vw_size(cam, image_size);
  width = cam->params.roi.width;
  height = cam->params.roi.height;

  DBG("After set_vw_size(), width = %d, height = %d\n",
      width, height);
  if (width <= 176 && height <= 144) {
   DBG("image type = VIDEOSIZE_QCIF\n");
   image_type = VIDEOSIZE_QCIF;
  }
  else if (width <= 320 && height <= 240) {
   DBG("image type = VIDEOSIZE_QVGA\n");
   image_type = VIDEOSIZE_QVGA;
  }
  else {
   DBG("image type = VIDEOSIZE_CIF\n");
   image_type = VIDEOSIZE_CIF;
  }
 } else {
  ERR("ConfigSensor410 failed\n");
  return -EINVAL;
 }

 cmd.req_mode = CAMERAACCESS_TYPE_RANDOM | CAMERAACCESS_VC;
 cmd.direction = TRANSFER_WRITE;


 cmd.buffer.registers[i].index = CPIA2_VC_VC_FORMAT;
 if (image_type == VIDEOSIZE_CIF) {
  cmd.buffer.registers[i++].value =
      (u8) (CPIA2_VC_VC_FORMAT_UFIRST |
     CPIA2_VC_VC_FORMAT_SHORTLINE);
 } else {
  cmd.buffer.registers[i++].value =
      (u8) CPIA2_VC_VC_FORMAT_UFIRST;
 }


 cmd.buffer.registers[i].index = CPIA2_VC_VC_CLOCKS;
 if (image_type == VIDEOSIZE_QCIF) {
  if (cam->params.pnp_id.device_type == DEVICE_STV_672) {
   cmd.buffer.registers[i++].value=
    (u8)(CPIA2_VC_VC_672_CLOCKS_CIF_DIV_BY_3 |
         CPIA2_VC_VC_672_CLOCKS_SCALING |
         CPIA2_VC_VC_CLOCKS_LOGDIV2);
   DBG("VC_Clocks (0xc4) should be B\n");
  }
  else {
   cmd.buffer.registers[i++].value=
    (u8)(CPIA2_VC_VC_676_CLOCKS_CIF_DIV_BY_3 |
         CPIA2_VC_VC_CLOCKS_LOGDIV2);
  }
 } else {
  if (cam->params.pnp_id.device_type == DEVICE_STV_672) {
   cmd.buffer.registers[i++].value =
      (u8) (CPIA2_VC_VC_672_CLOCKS_CIF_DIV_BY_3 |
     CPIA2_VC_VC_CLOCKS_LOGDIV0);
  }
  else {
   cmd.buffer.registers[i++].value =
      (u8) (CPIA2_VC_VC_676_CLOCKS_CIF_DIV_BY_3 |
     CPIA2_VC_VC_676_CLOCKS_SCALING |
     CPIA2_VC_VC_CLOCKS_LOGDIV0);
  }
 }
 DBG("VC_Clocks (0xc4) = 0x%0X\n", cmd.buffer.registers[i-1].value);


 cmd.buffer.registers[i].index = CPIA2_VC_VC_IHSIZE_LO;
 if (image_type == VIDEOSIZE_QCIF)
  cmd.buffer.registers[i++].value =
      (u8) (STV_IMAGE_QCIF_COLS / 4);
 else
  cmd.buffer.registers[i++].value =
      (u8) (STV_IMAGE_CIF_COLS / 4);


 cmd.buffer.registers[i].index = CPIA2_VC_VC_XLIM_HI;
 if (image_type == VIDEOSIZE_QCIF)
  cmd.buffer.registers[i++].value = (u8) 0;
 else
  cmd.buffer.registers[i++].value = (u8) 1;

 cmd.buffer.registers[i].index = CPIA2_VC_VC_XLIM_LO;
 if (image_type == VIDEOSIZE_QCIF)
  cmd.buffer.registers[i++].value = (u8) 208;
 else
  cmd.buffer.registers[i++].value = (u8) 160;

 cmd.buffer.registers[i].index = CPIA2_VC_VC_YLIM_HI;
 if (image_type == VIDEOSIZE_QCIF)
  cmd.buffer.registers[i++].value = (u8) 0;
 else
  cmd.buffer.registers[i++].value = (u8) 1;

 cmd.buffer.registers[i].index = CPIA2_VC_VC_YLIM_LO;
 if (image_type == VIDEOSIZE_QCIF)
  cmd.buffer.registers[i++].value = (u8) 160;
 else
  cmd.buffer.registers[i++].value = (u8) 64;


 cmd.buffer.registers[i].index = CPIA2_VC_VC_OHSIZE;
 cmd.buffer.registers[i++].value = cam->params.roi.width / 4;

 cmd.buffer.registers[i].index = CPIA2_VC_VC_OVSIZE;
 cmd.buffer.registers[i++].value = cam->params.roi.height / 4;


 cmd.buffer.registers[i].index = CPIA2_VC_VC_HCROP;
 if (image_type == VIDEOSIZE_QCIF)
  cmd.buffer.registers[i++].value =
      (u8) (((STV_IMAGE_QCIF_COLS / 4) - (width / 4)) / 2);
 else
  cmd.buffer.registers[i++].value =
      (u8) (((STV_IMAGE_CIF_COLS / 4) - (width / 4)) / 2);

 cmd.buffer.registers[i].index = CPIA2_VC_VC_VCROP;
 if (image_type == VIDEOSIZE_QCIF)
  cmd.buffer.registers[i++].value =
      (u8) (((STV_IMAGE_QCIF_ROWS / 4) - (height / 4)) / 2);
 else
  cmd.buffer.registers[i++].value =
      (u8) (((STV_IMAGE_CIF_ROWS / 4) - (height / 4)) / 2);


 cmd.buffer.registers[i].index = CPIA2_VC_VC_HPHASE;
 cmd.buffer.registers[i++].value = (u8) 0;

 cmd.buffer.registers[i].index = CPIA2_VC_VC_VPHASE;
 cmd.buffer.registers[i++].value = (u8) 0;

 cmd.buffer.registers[i].index = CPIA2_VC_VC_HISPAN;
 cmd.buffer.registers[i++].value = (u8) 31;

 cmd.buffer.registers[i].index = CPIA2_VC_VC_VISPAN;
 cmd.buffer.registers[i++].value = (u8) 31;

 cmd.buffer.registers[i].index = CPIA2_VC_VC_HICROP;
 cmd.buffer.registers[i++].value = (u8) 0;

 cmd.buffer.registers[i].index = CPIA2_VC_VC_VICROP;
 cmd.buffer.registers[i++].value = (u8) 0;

 cmd.buffer.registers[i].index = CPIA2_VC_VC_HFRACT;
 cmd.buffer.registers[i++].value = (u8) 0x81;

 cmd.buffer.registers[i].index = CPIA2_VC_VC_VFRACT;
 cmd.buffer.registers[i++].value = (u8) 0x81;

 cmd.reg_count = i;

 cpia2_send_command(cam, &cmd);

 return i;
}
