
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cx231xx {int dummy; } ;


 int DL_CTL_ADDRESS_LOW ;
 int vid_blk_read_byte (struct cx231xx*,int ,int*) ;

int cx231xx_check_fw(struct cx231xx *dev)
{
 u8 temp = 0;
 int status = 0;
 status = vid_blk_read_byte(dev, DL_CTL_ADDRESS_LOW, &temp);
 if (status < 0)
  return status;
 else
  return temp;

}
