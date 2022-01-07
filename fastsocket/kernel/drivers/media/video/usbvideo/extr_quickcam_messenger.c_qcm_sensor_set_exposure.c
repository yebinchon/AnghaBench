
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uvd {int dev; } ;


 int CHECK_RET (int,int ) ;
 int min (int,int) ;
 int qcm_stv_setb (int ,int,int) ;

__attribute__((used)) static int qcm_sensor_set_exposure(struct uvd *uvd, int exposure)
{
 int ret;
 int formedval;


 formedval = ( exposure >> 12 );


 formedval = min(formedval, 14);

 CHECK_RET(ret, qcm_stv_setb(uvd->dev,
   0x143A, 0xF0 | formedval));
 CHECK_RET(ret, qcm_stv_setb(uvd->dev, 0x143F, 0x01));
 return 0;
}
