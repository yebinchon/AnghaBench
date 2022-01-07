
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct uvd {int dev; } ;


 int CHECK_RET (int,int ) ;
 int qcm_stv_setb (int ,int,int ) ;

__attribute__((used)) static int qcm_sensor_setsize(struct uvd *uvd, u8 size)
{
 int ret;

 CHECK_RET(ret, qcm_stv_setb(uvd->dev, 0x1505, size));
 return 0;
}
