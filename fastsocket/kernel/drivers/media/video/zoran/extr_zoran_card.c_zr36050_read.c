
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


 int post_office_read (struct zoran*,int ,int) ;
 scalar_t__ post_office_wait (struct zoran*) ;
 scalar_t__ post_office_write (struct zoran*,int,int ,int) ;

__attribute__((used)) static u32
zr36050_read (struct videocodec *codec,
       u16 reg)
{
 struct zoran *zr = (struct zoran *) codec->master_data->data;
 __u32 data;

 if (post_office_wait(zr)
     || post_office_write(zr, 1, 0, reg >> 2)) {
  return -1;
 }

 data = post_office_read(zr, 0, reg & 0x03) & 0xff;
 return data;
}
