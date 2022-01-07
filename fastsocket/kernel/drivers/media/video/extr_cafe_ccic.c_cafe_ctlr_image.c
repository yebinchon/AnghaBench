
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_pix_format {int height; int bytesperline; int pixelformat; } ;
struct cafe_camera {struct v4l2_pix_format pix_format; } ;


 int C0_DF_MASK ;
 int C0_DF_RGB ;
 int C0_DF_YUV ;
 int C0_RGB4_XRGB ;
 int C0_RGB5_BGGR ;
 int C0_RGBF_444 ;
 int C0_RGBF_565 ;
 int C0_SIFM_MASK ;
 int C0_SIF_HVSYNC ;
 int C0_YUVE_YUYV ;
 int C0_YUV_PACKED ;
 int IMGP_YP_MASK ;
 int IMGSZ_H_MASK ;
 int IMGSZ_V_MASK ;
 int IMGSZ_V_SHIFT ;
 int REG_CTRL0 ;
 int REG_IMGOFFSET ;
 int REG_IMGPITCH ;
 int REG_IMGSIZE ;



 int cafe_reg_write (struct cafe_camera*,int ,int) ;
 int cafe_reg_write_mask (struct cafe_camera*,int ,int,int ) ;
 int cam_err (struct cafe_camera*,char*,int) ;

__attribute__((used)) static void cafe_ctlr_image(struct cafe_camera *cam)
{
 int imgsz;
 struct v4l2_pix_format *fmt = &cam->pix_format;

 imgsz = ((fmt->height << IMGSZ_V_SHIFT) & IMGSZ_V_MASK) |
  (fmt->bytesperline & IMGSZ_H_MASK);
 cafe_reg_write(cam, REG_IMGSIZE, imgsz);
 cafe_reg_write(cam, REG_IMGOFFSET, 0);

 cafe_reg_write_mask(cam, REG_IMGPITCH, fmt->bytesperline,
   IMGP_YP_MASK);



 switch (cam->pix_format.pixelformat) {
 case 128:
     cafe_reg_write_mask(cam, REG_CTRL0,
       C0_DF_YUV|C0_YUV_PACKED|C0_YUVE_YUYV,
       C0_DF_MASK);
     break;

 case 130:
     cafe_reg_write_mask(cam, REG_CTRL0,
       C0_DF_RGB|C0_RGBF_444|C0_RGB4_XRGB,
       C0_DF_MASK);

     break;

 case 129:
     cafe_reg_write_mask(cam, REG_CTRL0,
       C0_DF_RGB|C0_RGBF_565|C0_RGB5_BGGR,
       C0_DF_MASK);
     break;

 default:
     cam_err(cam, "Unknown format %x\n", cam->pix_format.pixelformat);
     break;
 }



 cafe_reg_write_mask(cam, REG_CTRL0, C0_SIF_HVSYNC,
   C0_SIFM_MASK);
}
