
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum pixel_fmt { ____Placeholder_pixel_fmt } pixel_fmt ;
typedef int __u32 ;


 int IPU_PIX_FMT_GENERIC ;
 int IPU_PIX_FMT_RGB24 ;
 int IPU_PIX_FMT_RGB332 ;
 int IPU_PIX_FMT_RGB565 ;
 int IPU_PIX_FMT_YVU422P ;





__attribute__((used)) static enum pixel_fmt fourcc_to_ipu_pix(__u32 fourcc)
{

 switch (fourcc) {
 case 129:
  return IPU_PIX_FMT_RGB565;
 case 131:
  return IPU_PIX_FMT_RGB24;
 case 130:
  return IPU_PIX_FMT_RGB332;
 case 128:
  return IPU_PIX_FMT_YVU422P;
 default:
  return IPU_PIX_FMT_GENERIC;
 }
}
