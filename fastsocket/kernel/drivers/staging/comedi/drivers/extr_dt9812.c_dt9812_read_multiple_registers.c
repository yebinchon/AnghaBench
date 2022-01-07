
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int count; struct dt9812_usb_cmd* address; } ;
struct TYPE_6__ {TYPE_1__ read_multi_info; } ;
struct dt9812_usb_cmd {TYPE_2__ u; int cmd; } ;
typedef struct dt9812_usb_cmd u8 ;
struct TYPE_8__ {int addr; } ;
struct TYPE_7__ {int addr; } ;
struct usb_dt9812 {TYPE_4__ command_read; int udev; TYPE_3__ command_write; } ;


 int DT9812_R_MULTI_BYTE_REG ;
 int HZ ;
 int cpu_to_le32 (int ) ;
 int usb_bulk_msg (int ,int ,struct dt9812_usb_cmd*,int,int*,int) ;
 int usb_rcvbulkpipe (int ,int ) ;
 int usb_sndbulkpipe (int ,int ) ;

__attribute__((used)) static int dt9812_read_multiple_registers(struct usb_dt9812 *dev, int reg_count,
       u8 * address, u8 * value)
{
 struct dt9812_usb_cmd cmd;
 int i, count, retval;

 cmd.cmd = cpu_to_le32(DT9812_R_MULTI_BYTE_REG);
 cmd.u.read_multi_info.count = reg_count;
 for (i = 0; i < reg_count; i++)
  cmd.u.read_multi_info.address[i] = address[i];


 count = 32;
 retval = usb_bulk_msg(dev->udev,
         usb_sndbulkpipe(dev->udev,
           dev->command_write.addr),
         &cmd, 32, &count, HZ * 1);
 if (retval)
  return retval;
 retval = usb_bulk_msg(dev->udev,
         usb_rcvbulkpipe(dev->udev,
           dev->command_read.addr),
         value, reg_count, &count, HZ * 1);
 return retval;
}
