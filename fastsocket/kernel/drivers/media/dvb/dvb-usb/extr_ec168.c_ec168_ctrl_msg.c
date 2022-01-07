
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ec168_req {int dummy; } ;
struct dvb_usb_device {int udev; } ;


 int ec168_rw_udev (int ,struct ec168_req*) ;

__attribute__((used)) static int ec168_ctrl_msg(struct dvb_usb_device *d, struct ec168_req *req)
{
 return ec168_rw_udev(d->udev, req);
}
