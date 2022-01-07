
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct kaweth_device {TYPE_3__* dev; } ;
struct TYPE_6__ {TYPE_2__* config; } ;
struct TYPE_4__ {int bConfigurationValue; } ;
struct TYPE_5__ {TYPE_1__ desc; } ;


 int KAWETH_CONTROL_TIMEOUT ;
 int USB_REQ_SET_CONFIGURATION ;
 int dbg (char*,...) ;
 int kaweth_control (struct kaweth_device*,int ,int ,int ,int ,int ,int *,int ,int ) ;
 int mdelay (int) ;
 int usb_sndctrlpipe (TYPE_3__*,int ) ;

__attribute__((used)) static int kaweth_reset(struct kaweth_device *kaweth)
{
 int result;

 dbg("kaweth_reset(%p)", kaweth);
 result = kaweth_control(kaweth,
    usb_sndctrlpipe(kaweth->dev, 0),
    USB_REQ_SET_CONFIGURATION,
    0,
    kaweth->dev->config[0].desc.bConfigurationValue,
    0,
    ((void*)0),
    0,
    KAWETH_CONTROL_TIMEOUT);

 mdelay(10);

 dbg("kaweth_reset() returns %d.",result);

 return result;
}
