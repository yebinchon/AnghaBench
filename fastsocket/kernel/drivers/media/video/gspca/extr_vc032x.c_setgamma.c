
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int dummy; } ;


 int poxxxx_gamma ;
 int usb_exchange (struct gspca_dev*,int ) ;

__attribute__((used)) static void setgamma(struct gspca_dev *gspca_dev)
{

 usb_exchange(gspca_dev, poxxxx_gamma);
}
