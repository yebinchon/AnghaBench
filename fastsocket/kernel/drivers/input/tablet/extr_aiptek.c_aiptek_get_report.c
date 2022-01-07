
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aiptek {int ifnum; int usbdev; } ;


 int USB_DIR_IN ;
 int USB_RECIP_INTERFACE ;
 int USB_REQ_GET_REPORT ;
 int USB_TYPE_CLASS ;
 int usb_control_msg (int ,int ,int ,int,unsigned char,int ,void*,int,int) ;
 int usb_rcvctrlpipe (int ,int ) ;

__attribute__((used)) static int
aiptek_get_report(struct aiptek *aiptek,
    unsigned char report_type,
    unsigned char report_id, void *buffer, int size)
{
 return usb_control_msg(aiptek->usbdev,
          usb_rcvctrlpipe(aiptek->usbdev, 0),
          USB_REQ_GET_REPORT,
          USB_TYPE_CLASS | USB_RECIP_INTERFACE |
          USB_DIR_IN, (report_type << 8) + report_id,
          aiptek->ifnum, buffer, size, 5000);
}
