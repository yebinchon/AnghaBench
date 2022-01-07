
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ov511 {scalar_t__ bclass; scalar_t__ streaming; int dev; } ;


 scalar_t__ BCL_OV518 ;
 int PDEBUG (int,char*) ;
 int ov511_set_packet_size (struct usb_ov511*,int ) ;
 int ov518_set_packet_size (struct usb_ov511*,int ) ;
 int ov51x_unlink_isoc (struct usb_ov511*) ;

__attribute__((used)) static void
ov51x_stop_isoc(struct usb_ov511 *ov)
{
 if (!ov->streaming || !ov->dev)
  return;

 PDEBUG(3, "*** Stopping capture ***");

 if (ov->bclass == BCL_OV518)
  ov518_set_packet_size(ov, 0);
 else
  ov511_set_packet_size(ov, 0);

 ov->streaming = 0;

 ov51x_unlink_isoc(ov);
}
