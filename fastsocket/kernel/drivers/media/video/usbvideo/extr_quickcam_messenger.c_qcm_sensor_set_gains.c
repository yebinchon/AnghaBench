
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct uvd {int dev; } ;


 int CHECK_RET (int,int ) ;
 int max (int,int) ;
 int qcm_hsv2rgb (int,int,int,int*,int*,int*) ;
 int qcm_stv_setb (int ,int,int) ;

__attribute__((used)) static int qcm_sensor_set_gains(struct uvd *uvd, u16 hue,
 u16 saturation, u16 value)
{
 int ret;
 u16 r=0,g=0,b=0;


 qcm_hsv2rgb(hue, saturation, value, &r, &g, &b);

 r >>= 12;
 g >>= 12;
 b >>= 12;


 r = max((u16) 8, r);
 g = max((u16) 8, g);
 b = max((u16) 8, b);

 r |= 0x30;
 g |= 0x30;
 b |= 0x30;


 CHECK_RET(ret, qcm_stv_setb(uvd->dev, 0x0509, r));
 CHECK_RET(ret, qcm_stv_setb(uvd->dev, 0x050A, g));
 CHECK_RET(ret, qcm_stv_setb(uvd->dev, 0x050B, b));


 CHECK_RET(ret, qcm_stv_setb(uvd->dev, 0x050C, 0x2A));
 CHECK_RET(ret, qcm_stv_setb(uvd->dev, 0x050D, 0x01));
 CHECK_RET(ret, qcm_stv_setb(uvd->dev, 0x143F, 0x01));

 return 0;
}
