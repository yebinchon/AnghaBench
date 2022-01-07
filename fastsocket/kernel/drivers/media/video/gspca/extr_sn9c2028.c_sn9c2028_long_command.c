
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct gspca_dev {int dummy; } ;
typedef int __u8 ;


 int EIO ;
 int err (char*,int) ;
 int memset (int *,int ,int) ;
 int sn9c2028_command (struct gspca_dev*,int *) ;
 int sn9c2028_read1 (struct gspca_dev*) ;
 int sn9c2028_read4 (struct gspca_dev*,int *) ;

__attribute__((used)) static int sn9c2028_long_command(struct gspca_dev *gspca_dev, u8 *command)
{
 int i, status;
 __u8 reading[4];

 status = sn9c2028_command(gspca_dev, command);
 if (status < 0)
  return status;

 status = -1;
 for (i = 0; i < 256 && status < 2; i++)
  status = sn9c2028_read1(gspca_dev);
 if (status != 2) {
  err("long command status read error %d", status);
  return (status < 0) ? status : -EIO;
 }

 memset(reading, 0, 4);
 status = sn9c2028_read4(gspca_dev, reading);
 if (status < 0)
  return status;



 status = sn9c2028_read1(gspca_dev);
 if (status < 0)
  return status;

 return 0;
}
