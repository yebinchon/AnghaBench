
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_device {int dummy; } ;
struct sd {int subtype; } ;
struct TYPE_4__ {TYPE_1__* cam_mode; } ;
struct gspca_dev {scalar_t__ curr_mode; TYPE_2__ cam; struct usb_device* dev; } ;
struct TYPE_3__ {int priv; } ;




 int SPCA501_REG_CTLRL ;
 int SPCA50X_REG_USB ;


 int reg_write (struct usb_device*,int ,int,int) ;
 int setbrightness (struct gspca_dev*) ;
 int setcolors (struct gspca_dev*) ;
 int setcontrast (struct gspca_dev*) ;
 int spca501_3com_open_data ;
 int spca501_open_data ;
 int spca501c_arowana_open_data ;
 int spca501c_mysterious_init_data ;
 int write_vector (struct gspca_dev*,int ) ;

__attribute__((used)) static int sd_start(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 struct usb_device *dev = gspca_dev->dev;
 int mode;

 switch (sd->subtype) {
 case 128:

  write_vector(gspca_dev, spca501_3com_open_data);
  break;
 case 131:
 case 129:

  write_vector(gspca_dev, spca501c_arowana_open_data);
  break;
 case 130:

  write_vector(gspca_dev, spca501c_mysterious_init_data);
  break;
 default:

  write_vector(gspca_dev, spca501_open_data);
 }


 mode = gspca_dev->cam.cam_mode[(int) gspca_dev->curr_mode].priv;



 reg_write(dev, SPCA50X_REG_USB, 0x6, 0x94);
 switch (mode) {
 case 0:
  reg_write(dev, SPCA50X_REG_USB, 0x07, 0x004a);
  break;
 case 1:
  reg_write(dev, SPCA50X_REG_USB, 0x07, 0x104a);
  break;
 default:

  reg_write(dev, SPCA50X_REG_USB, 0x07, 0x204a);
  break;
 }
 reg_write(dev, SPCA501_REG_CTLRL, 0x01, 0x02);





 setbrightness(gspca_dev);
 setcontrast(gspca_dev);
 setcolors(gspca_dev);
 return 0;
}
