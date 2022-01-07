
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int whiteness; int colour; int hue; int contrast; int brightness; } ;
struct uvd {TYPE_1__ vpic; int dev; scalar_t__ user_data; } ;
struct qcm {size_t size; } ;
struct TYPE_7__ {int cmd; } ;
struct TYPE_6__ {int reg; int val; } ;


 int ARRAY_SIZE (TYPE_2__*) ;
 int CHECK_RET (int,int ) ;
 int ISOC_PACKET_SIZE ;
 int STV_ISO_ENABLE ;
 TYPE_3__* camera_sizes ;
 int cpu_to_le16 (int ) ;
 int qcm_sensor_set_shutter (struct uvd*,int ) ;
 int qcm_sensor_setlevels (struct uvd*,int ,int ,int ,int ) ;
 int qcm_sensor_setsize (struct uvd*,int ) ;
 int qcm_stv_setb (int ,int,int) ;
 int qcm_stv_setw (int ,int,int ) ;
 TYPE_2__* regval_table ;

__attribute__((used)) static int qcm_sensor_init(struct uvd *uvd)
{
 struct qcm *cam = (struct qcm *) uvd->user_data;
 int ret;
 int i;

 for (i=0; i < ARRAY_SIZE(regval_table) ; i++) {
  CHECK_RET(ret, qcm_stv_setb(uvd->dev,
     regval_table[i].reg,
     regval_table[i].val));
 }

 CHECK_RET(ret, qcm_stv_setw(uvd->dev, 0x15c1,
    cpu_to_le16(ISOC_PACKET_SIZE)));
 CHECK_RET(ret, qcm_stv_setb(uvd->dev, 0x15c3, 0x08));
 CHECK_RET(ret, qcm_stv_setb(uvd->dev, 0x143f, 0x01));

 CHECK_RET(ret, qcm_stv_setb(uvd->dev, STV_ISO_ENABLE, 0x00));

 CHECK_RET(ret, qcm_sensor_setsize(uvd, camera_sizes[cam->size].cmd));

 CHECK_RET(ret, qcm_sensor_setlevels(uvd, uvd->vpic.brightness,
   uvd->vpic.contrast, uvd->vpic.hue, uvd->vpic.colour));

 CHECK_RET(ret, qcm_sensor_set_shutter(uvd, uvd->vpic.whiteness));
 CHECK_RET(ret, qcm_sensor_setsize(uvd, camera_sizes[cam->size].cmd));

 return 0;
}
