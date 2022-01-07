
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct zoran {int dummy; } ;
struct videocodec {TYPE_1__* master_data; } ;
struct TYPE_2__ {scalar_t__ data; } ;


 scalar_t__ post_office_wait (struct zoran*) ;
 int post_office_write (struct zoran*,int,int,int) ;

void
zr36016_write (struct videocodec *codec,
        u16 reg,
        u32 val)
{
 struct zoran *zr = (struct zoran *) codec->master_data->data;

 if (post_office_wait(zr)) {
  return;
 }

 post_office_write(zr, 2, reg & 0x03, val & 0x0ff);
}
