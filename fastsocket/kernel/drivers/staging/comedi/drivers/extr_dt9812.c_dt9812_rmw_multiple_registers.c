
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int addr; } ;
struct usb_dt9812 {TYPE_1__ command_write; int udev; } ;
struct TYPE_5__ {int count; struct dt9812_rmw_byte* rmw; } ;
struct TYPE_6__ {TYPE_2__ rmw_multi_info; } ;
struct dt9812_usb_cmd {TYPE_3__ u; int cmd; } ;
struct dt9812_rmw_byte {int dummy; } ;


 int DT9812_RMW_MULTI_BYTE_REG ;
 int HZ ;
 int cpu_to_le32 (int ) ;
 int usb_bulk_msg (int ,int ,struct dt9812_usb_cmd*,int,int*,int) ;
 int usb_sndbulkpipe (int ,int ) ;

__attribute__((used)) static int dt9812_rmw_multiple_registers(struct usb_dt9812 *dev, int reg_count,
      struct dt9812_rmw_byte *rmw)
{
 struct dt9812_usb_cmd cmd;
 int i, count, retval;

 cmd.cmd = cpu_to_le32(DT9812_RMW_MULTI_BYTE_REG);
 cmd.u.rmw_multi_info.count = reg_count;
 for (i = 0; i < reg_count; i++)
  cmd.u.rmw_multi_info.rmw[i] = rmw[i];


 retval = usb_bulk_msg(dev->udev,
         usb_sndbulkpipe(dev->udev,
           dev->command_write.addr),
         &cmd, 32, &count, HZ * 1);
 return retval;
}
