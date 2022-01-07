
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef void* u8 ;
struct TYPE_10__ {int addr; } ;
struct usb_dt9812 {TYPE_5__ command_write; int udev; } ;
struct TYPE_8__ {TYPE_2__* write; } ;
struct TYPE_6__ {int count; } ;
struct TYPE_9__ {TYPE_3__ write_multi_info; TYPE_1__ read_multi_info; } ;
struct dt9812_usb_cmd {TYPE_4__ u; int cmd; } ;
struct TYPE_7__ {void* value; void* address; } ;


 int DT9812_W_MULTI_BYTE_REG ;
 int HZ ;
 int cpu_to_le32 (int ) ;
 int usb_bulk_msg (int ,int ,struct dt9812_usb_cmd*,int,int*,int) ;
 int usb_sndbulkpipe (int ,int ) ;

__attribute__((used)) static int dt9812_write_multiple_registers(struct usb_dt9812 *dev,
        int reg_count, u8 * address,
        u8 * value)
{
 struct dt9812_usb_cmd cmd;
 int i, count, retval;

 cmd.cmd = cpu_to_le32(DT9812_W_MULTI_BYTE_REG);
 cmd.u.read_multi_info.count = reg_count;
 for (i = 0; i < reg_count; i++) {
  cmd.u.write_multi_info.write[i].address = address[i];
  cmd.u.write_multi_info.write[i].value = value[i];
 }

 retval = usb_bulk_msg(dev->udev,
         usb_sndbulkpipe(dev->udev,
           dev->command_write.addr),
         &cmd, 32, &count, HZ * 1);
 return retval;
}
