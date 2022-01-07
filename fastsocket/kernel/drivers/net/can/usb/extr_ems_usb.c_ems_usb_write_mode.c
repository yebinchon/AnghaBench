
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_6__ {int mode; } ;
struct TYPE_7__ {TYPE_1__ sja1000; } ;
struct TYPE_8__ {TYPE_2__ cc_params; } ;
struct TYPE_9__ {TYPE_3__ can_params; } ;
struct TYPE_10__ {TYPE_4__ msg; } ;
struct ems_usb {TYPE_5__ active_params; } ;


 int ems_usb_command_msg (struct ems_usb*,TYPE_5__*) ;

__attribute__((used)) static int ems_usb_write_mode(struct ems_usb *dev, u8 mode)
{
 dev->active_params.msg.can_params.cc_params.sja1000.mode = mode;

 return ems_usb_command_msg(dev, &dev->active_params);
}
