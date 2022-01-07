
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sd {size_t autogain; } ;
struct gspca_dev {int ctrl_dis; } ;


 int AUTOGAIN_IDX ;
 int i2c_write (struct gspca_dev*,int,int const*,int) ;

__attribute__((used)) static void setautogain(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 static const u8 data[2] = {0x28, 0x3c};

 if (gspca_dev->ctrl_dis & (1 << AUTOGAIN_IDX))
  return;
 i2c_write(gspca_dev, 0xd1, &data[sd->autogain], 1);
}
