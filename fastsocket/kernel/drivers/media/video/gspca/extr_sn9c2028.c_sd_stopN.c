
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int dummy; } ;
typedef int __u8 ;


 int D_ERR ;
 int PDEBUG (int ,char*) ;
 int memset (int*,int ,int) ;
 int sn9c2028_command (struct gspca_dev*,int*) ;
 int sn9c2028_read1 (struct gspca_dev*) ;

__attribute__((used)) static void sd_stopN(struct gspca_dev *gspca_dev)
{
 int result;
 __u8 data[6];

 result = sn9c2028_read1(gspca_dev);
 if (result < 0)
  PDEBUG(D_ERR, "Camera Stop read failed");

 memset(data, 0, 6);
 data[0] = 0x14;
 result = sn9c2028_command(gspca_dev, data);
 if (result < 0)
  PDEBUG(D_ERR, "Camera Stop command failed");
}
