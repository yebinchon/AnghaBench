
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int ctl_pin_status_mask; } ;
struct cx231xx {TYPE_1__ board; } ;


 int PIN_CTRL ;
 int vid_blk_read_word (struct cx231xx*,int ,int *) ;
 int vid_blk_write_word (struct cx231xx*,int ,int ) ;

int cx231xx_init_ctrl_pin_status(struct cx231xx *dev)
{
 u32 value;
 int status = 0;

 status = vid_blk_read_word(dev, PIN_CTRL, &value);
 value |= (~dev->board.ctl_pin_status_mask);
 status = vid_blk_write_word(dev, PIN_CTRL, value);

 return status;
}
