
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * gpio; } ;
struct zoran {TYPE_1__ card; } ;


 int GPIO (struct zoran*,int ,int) ;
 size_t ZR_GPIO_JPEG_FRAME ;

__attribute__((used)) static inline void
set_frame (struct zoran *zr,
    int val)
{
 GPIO(zr, zr->card.gpio[ZR_GPIO_JPEG_FRAME], val);
}
