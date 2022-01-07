
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx231xx {int dummy; } ;


 int DL_CTL_CONTROL ;
 int vid_blk_write_byte (struct cx231xx*,int ,int) ;

int restartAudioFirmware(struct cx231xx *dev)
{
 return vid_blk_write_byte(dev, DL_CTL_CONTROL, 0x13);
}
