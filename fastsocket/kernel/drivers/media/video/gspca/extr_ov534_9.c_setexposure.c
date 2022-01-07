
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sd {size_t exposure; } ;
struct gspca_dev {int dummy; } ;


 int sccb_read (struct gspca_dev*,int) ;
 int sccb_write (struct gspca_dev*,int,int const) ;

__attribute__((used)) static void setexposure(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 u8 val;
 static const u8 expo[4] = {0x00, 0x25, 0x38, 0x5e};

 sccb_write(gspca_dev, 0x10,
   expo[sd->exposure]);

 val = sccb_read(gspca_dev, 0x13);
 sccb_write(gspca_dev, 0xff, 0x00);
 sccb_write(gspca_dev, 0x13, val);

 val = sccb_read(gspca_dev, 0xa1);
 sccb_write(gspca_dev, 0xff, 0x00);
 sccb_write(gspca_dev, 0xa1, val & 0xe0);
}
