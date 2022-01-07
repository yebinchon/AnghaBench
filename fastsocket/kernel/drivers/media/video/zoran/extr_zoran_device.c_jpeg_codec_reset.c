
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* gpcs; int * gpio; } ;
struct zoran {TYPE_1__ card; } ;


 size_t GPCS_JPEG_RESET ;
 int GPIO (struct zoran*,int ,int) ;
 size_t ZR_GPIO_JPEG_RESET ;
 int jpeg_codec_sleep (struct zoran*,int ) ;
 int post_office_write (struct zoran*,int,int ,int ) ;
 int udelay (int) ;

int
jpeg_codec_reset (struct zoran *zr)
{

 jpeg_codec_sleep(zr, 0);

 if (zr->card.gpcs[GPCS_JPEG_RESET] != 0xff) {
  post_office_write(zr, zr->card.gpcs[GPCS_JPEG_RESET], 0,
      0);
  udelay(2);
 } else {
  GPIO(zr, zr->card.gpio[ZR_GPIO_JPEG_RESET], 0);
  udelay(2);
  GPIO(zr, zr->card.gpio[ZR_GPIO_JPEG_RESET], 1);
  udelay(2);
 }

 return 0;
}
