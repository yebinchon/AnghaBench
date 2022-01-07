
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uvd {int dev; } ;


 int CHECK_RET (int,int ) ;
 int STV_ISO_ENABLE ;
 int qcm_stv_setb (int ,int ,int) ;

__attribute__((used)) static int qcm_camera_off(struct uvd *uvd)
{
 int ret;
 CHECK_RET(ret, qcm_stv_setb(uvd->dev, STV_ISO_ENABLE, 0x00));
 return 0;
}
