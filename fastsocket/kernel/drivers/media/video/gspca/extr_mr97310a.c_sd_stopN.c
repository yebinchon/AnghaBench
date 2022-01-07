
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {scalar_t__ do_lcd_stop; } ;
struct gspca_dev {int dummy; } ;


 int lcd_stop (struct gspca_dev*) ;
 int stream_stop (struct gspca_dev*) ;
 int zero_the_pointer (struct gspca_dev*) ;

__attribute__((used)) static void sd_stopN(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;

 stream_stop(gspca_dev);

 zero_the_pointer(gspca_dev);
 if (sd->do_lcd_stop)
  lcd_stop(gspca_dev);
}
