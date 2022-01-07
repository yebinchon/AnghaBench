
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct usbnet {int dummy; } ;


 int __usbnet_read_cmd (struct usbnet*,int ,int ,int ,int ,void*,int ) ;

int usbnet_read_cmd_nopm(struct usbnet *dev, u8 cmd, u8 reqtype,
     u16 value, u16 index, void *data, u16 size)
{
 return __usbnet_read_cmd(dev, cmd, reqtype, value, index,
     data, size);
}
