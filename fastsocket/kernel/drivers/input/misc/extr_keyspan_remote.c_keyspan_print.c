
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_keyspan {int* in_buffer; TYPE_1__* udev; } ;
struct TYPE_2__ {int dev; } ;


 int RECV_SIZE ;
 int dev_info (int *,char*,char*) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static void keyspan_print(struct usb_keyspan* dev)
{
 char codes[4 * RECV_SIZE];
 int i;

 for (i = 0; i < RECV_SIZE; i++)
  snprintf(codes + i * 3, 4, "%02x ", dev->in_buffer[i]);

 dev_info(&dev->udev->dev, "%s\n", codes);
}
