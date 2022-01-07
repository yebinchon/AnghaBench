
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx231xx {int dummy; } ;


 int PATH1_VOL_CTL ;
 int vid_blk_write_byte (struct cx231xx*,int ,int) ;

int cx231xx_unmute_audio(struct cx231xx *dev)
{
 return vid_blk_write_byte(dev, PATH1_VOL_CTL, 0x24);
}
