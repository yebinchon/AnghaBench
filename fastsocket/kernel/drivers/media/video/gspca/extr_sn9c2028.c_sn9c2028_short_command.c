
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct gspca_dev {int dummy; } ;


 int sn9c2028_command (struct gspca_dev*,int *) ;
 int sn9c2028_read1 (struct gspca_dev*) ;

__attribute__((used)) static int sn9c2028_short_command(struct gspca_dev *gspca_dev, u8 *command)
{
 int err_code;

 err_code = sn9c2028_command(gspca_dev, command);
 if (err_code < 0)
  return err_code;

 err_code = sn9c2028_read1(gspca_dev);
 if (err_code < 0)
  return err_code;

 return 0;
}
