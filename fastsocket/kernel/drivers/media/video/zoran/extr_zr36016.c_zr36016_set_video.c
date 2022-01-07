
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zr36016 {int xdec; int ydec; scalar_t__ yoff; scalar_t__ xoff; int height; int width; int name; } ;
struct videocodec {scalar_t__ data; } ;
struct vfe_settings {int decimation; scalar_t__ y; int x; int height; int width; } ;
struct vfe_polarity {int dummy; } ;
struct tvnorm {int HStart; scalar_t__ VStart; } ;


 int dprintk (int,char*,int ,int,scalar_t__,int ,scalar_t__,int ,int ,int) ;

__attribute__((used)) static int
zr36016_set_video (struct videocodec *codec,
     struct tvnorm *norm,
     struct vfe_settings *cap,
     struct vfe_polarity *pol)
{
 struct zr36016 *ptr = (struct zr36016 *) codec->data;

 dprintk(2, "%s: set_video %d.%d, %d/%d-%dx%d (0x%x) call\n",
  ptr->name, norm->HStart, norm->VStart,
  cap->x, cap->y, cap->width, cap->height,
  cap->decimation);




 ptr->width = cap->width;
 ptr->height = cap->height;






 ptr->xoff = (norm->HStart ? norm->HStart : 1) + cap->x;




 ptr->yoff = norm->VStart + cap->y;

 ptr->xdec = ((cap->decimation & 0xff) == 1) ? 0 : 1;
 ptr->ydec = (((cap->decimation >> 8) & 0xff) == 1) ? 0 : 1;

 return 0;
}
