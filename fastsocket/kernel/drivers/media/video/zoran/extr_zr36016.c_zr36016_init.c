
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zr36016 {scalar_t__ mode; int width; int height; int xoff; int yoff; scalar_t__ ydec; scalar_t__ xdec; } ;


 scalar_t__ CODEC_DO_COMPRESSION ;
 int ZR016I_NAX_HI ;
 int ZR016I_NAX_LO ;
 int ZR016I_NAY_HI ;
 int ZR016I_NAY_LO ;
 int ZR016I_PAX_HI ;
 int ZR016I_PAX_LO ;
 int ZR016I_PAY_HI ;
 int ZR016I_PAY_LO ;
 int ZR016I_SETUP1 ;
 int ZR016I_SETUP2 ;
 int ZR016_CCIR ;
 int ZR016_CNTI ;
 int ZR016_COMPRESSION ;
 int ZR016_EXPANSION ;
 int ZR016_GOSTOP ;
 int ZR016_HORZ ;
 int ZR016_HRFL ;
 int ZR016_MODE ;
 int ZR016_VERT ;
 int ZR016_YUV422 ;
 int ZR016_YUV422_YUV422 ;
 int zr36016_write (struct zr36016*,int ,int) ;
 int zr36016_writei (struct zr36016*,int ,int) ;

__attribute__((used)) static void
zr36016_init (struct zr36016 *ptr)
{

 zr36016_write(ptr, ZR016_GOSTOP, 0);


 zr36016_write(ptr, ZR016_MODE,
        ZR016_YUV422 | ZR016_YUV422_YUV422 |
        (ptr->mode == CODEC_DO_COMPRESSION ?
         ZR016_COMPRESSION : ZR016_EXPANSION));


 zr36016_writei(ptr, ZR016I_SETUP1,
         (ptr->xdec ? (ZR016_HRFL | ZR016_HORZ) : 0) |
         (ptr->ydec ? ZR016_VERT : 0) | ZR016_CNTI);
 zr36016_writei(ptr, ZR016I_SETUP2, ZR016_CCIR);



 zr36016_writei(ptr, ZR016I_PAX_HI, ptr->width >> 8);
 zr36016_writei(ptr, ZR016I_PAX_LO, ptr->width & 0xFF);
 zr36016_writei(ptr, ZR016I_PAY_HI, ptr->height >> 8);
 zr36016_writei(ptr, ZR016I_PAY_LO, ptr->height & 0xFF);
 zr36016_writei(ptr, ZR016I_NAX_HI, ptr->xoff >> 8);
 zr36016_writei(ptr, ZR016I_NAX_LO, ptr->xoff & 0xFF);
 zr36016_writei(ptr, ZR016I_NAY_HI, ptr->yoff >> 8);
 zr36016_writei(ptr, ZR016I_NAY_LO, ptr->yoff & 0xFF);


 zr36016_write(ptr, ZR016_GOSTOP, 1);
}
