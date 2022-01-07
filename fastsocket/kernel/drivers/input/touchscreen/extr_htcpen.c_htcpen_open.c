
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;


 int DEVICE_ENABLE ;
 int HTCPEN_PORT_INIT ;
 int outb_p (int ,int ) ;

__attribute__((used)) static int htcpen_open(struct input_dev *dev)
{
 outb_p(DEVICE_ENABLE, HTCPEN_PORT_INIT);

 return 0;
}
