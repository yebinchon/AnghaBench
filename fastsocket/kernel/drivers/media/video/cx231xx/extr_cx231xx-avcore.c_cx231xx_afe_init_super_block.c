
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct cx231xx {int dummy; } ;


 int SUP_BLK_PLL2 ;
 int SUP_BLK_PWRDN ;
 int SUP_BLK_TUNE1 ;
 int SUP_BLK_TUNE2 ;
 int SUP_BLK_TUNE3 ;
 int afe_read_byte (struct cx231xx*,int ,int*) ;
 int afe_write_byte (struct cx231xx*,int ,int) ;
 int cx231xx_info (char*) ;
 int msleep (int) ;

int cx231xx_afe_init_super_block(struct cx231xx *dev, u32 ref_count)
{
 int status = 0;
 u8 temp = 0;
 u8 afe_power_status = 0;
 int i = 0;


 temp = (u8) (ref_count & 0xff);
 status = afe_write_byte(dev, SUP_BLK_TUNE2, temp);
 if (status < 0)
  return status;

 status = afe_read_byte(dev, SUP_BLK_TUNE2, &afe_power_status);
 if (status < 0)
  return status;

 temp = (u8) ((ref_count & 0x300) >> 8);
 temp |= 0x40;
 status = afe_write_byte(dev, SUP_BLK_TUNE1, temp);
 if (status < 0)
  return status;

 status = afe_write_byte(dev, SUP_BLK_PLL2, 0x0f);
 if (status < 0)
  return status;


 while (afe_power_status != 0x18) {
  status = afe_write_byte(dev, SUP_BLK_PWRDN, 0x18);
  if (status < 0) {
   cx231xx_info(
   ": Init Super Block failed in send cmd\n");
   break;
  }

  status = afe_read_byte(dev, SUP_BLK_PWRDN, &afe_power_status);
  afe_power_status &= 0xff;
  if (status < 0) {
   cx231xx_info(
   ": Init Super Block failed in receive cmd\n");
   break;
  }
  i++;
  if (i == 10) {
   cx231xx_info(
   ": Init Super Block force break in loop !!!!\n");
   status = -1;
   break;
  }
 }

 if (status < 0)
  return status;


 status = afe_write_byte(dev, SUP_BLK_TUNE3, 0x40);
 if (status < 0)
  return status;

 msleep(5);


 status = afe_write_byte(dev, SUP_BLK_TUNE3, 0x00);

 return status;
}
