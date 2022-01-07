
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zr36050 {int width; int height; int total_code_vol; int real_code_vol; int max_block_vol; int name; } ;
struct videocodec {scalar_t__ data; } ;
struct vfe_settings {int width; int height; int decimation; int quality; int y; int x; } ;
struct vfe_polarity {int dummy; } ;
struct tvnorm {int VStart; int HStart; } ;


 int ZR050_MBCV ;
 int dprintk (int,char*,int ,int ,int ,int ,int ,int,int,int,int) ;
 int zr36050_write (struct zr36050*,int ,int ) ;

__attribute__((used)) static int
zr36050_set_video (struct videocodec *codec,
     struct tvnorm *norm,
     struct vfe_settings *cap,
     struct vfe_polarity *pol)
{
 struct zr36050 *ptr = (struct zr36050 *) codec->data;
 int size;

 dprintk(2, "%s: set_video %d.%d, %d/%d-%dx%d (0x%x) q%d call\n",
  ptr->name, norm->HStart, norm->VStart,
  cap->x, cap->y, cap->width, cap->height,
  cap->decimation, cap->quality);



 ptr->width = cap->width / (cap->decimation & 0xff);
 ptr->height = cap->height / ((cap->decimation >> 8) & 0xff);


 size = ptr->width * ptr->height;
 size *= 16;

 size = size * cap->quality / 200;


 if (size < 8192)
  size = 8192;

 if (size > ptr->total_code_vol * 7)
  size = ptr->total_code_vol * 7;

 ptr->real_code_vol = size >> 3;



 zr36050_write(ptr, ZR050_MBCV, ptr->max_block_vol);

 return 0;
}
