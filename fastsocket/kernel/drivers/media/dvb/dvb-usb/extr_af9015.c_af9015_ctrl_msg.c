
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct req_t {int dummy; } ;
struct dvb_usb_device {int udev; } ;


 int af9015_rw_udev (int ,struct req_t*) ;

__attribute__((used)) static int af9015_ctrl_msg(struct dvb_usb_device *d, struct req_t *req)
{
 return af9015_rw_udev(d->udev, req);
}
