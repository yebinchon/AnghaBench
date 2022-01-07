
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_device_id {int idProduct; int driver_info; } ;
struct sd {int quality; int ctrls; int sensor; int bridge; } ;
struct TYPE_2__ {int ctrls; } ;
struct gspca_dev {TYPE_1__ cam; } ;


 int BRIDGE_ZC301 ;
 int BRIDGE_ZC303 ;
 int QUALITY_DEF ;

__attribute__((used)) static int sd_config(struct gspca_dev *gspca_dev,
   const struct usb_device_id *id)
{
 struct sd *sd = (struct sd *) gspca_dev;

 if (id->idProduct == 0x301b)
  sd->bridge = BRIDGE_ZC301;
 else
  sd->bridge = BRIDGE_ZC303;


 sd->sensor = id->driver_info;

 gspca_dev->cam.ctrls = sd->ctrls;
 sd->quality = QUALITY_DEF;

 return 0;
}
