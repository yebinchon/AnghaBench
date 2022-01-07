
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct zoran {int dummy; } ;
struct videocodec {TYPE_1__* master_data; } ;
typedef int __u32 ;
struct TYPE_2__ {scalar_t__ data; } ;


 int post_office_read (struct zoran*,int,int) ;
 scalar_t__ post_office_wait (struct zoran*) ;

__attribute__((used)) static u32
zr36016_read (struct videocodec *codec,
       u16 reg)
{
 struct zoran *zr = (struct zoran *) codec->master_data->data;
 __u32 data;

 if (post_office_wait(zr)) {
  return -1;
 }

 data = post_office_read(zr, 2, reg & 0x03) & 0xff;
 return data;
}
