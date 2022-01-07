
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uvd {int dev; } ;


 int CHECK_RET (int,int ) ;
 int qcm_stv_setb (int ,int,int) ;

__attribute__((used)) static int qcm_sensor_set_shutter(struct uvd *uvd, int whiteness)
{
 int ret;

 if (whiteness > 0xC000)
  whiteness = 0xC000 + (whiteness & 0x3FFF)*8;

 CHECK_RET(ret, qcm_stv_setb(uvd->dev, 0x143D,
    (whiteness >> 8) & 0xFF));
 CHECK_RET(ret, qcm_stv_setb(uvd->dev, 0x143E,
    (whiteness >> 16) & 0x03));
 CHECK_RET(ret, qcm_stv_setb(uvd->dev, 0x143F, 0x01));

 return 0;
}
