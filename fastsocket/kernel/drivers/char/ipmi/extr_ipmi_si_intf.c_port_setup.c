
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int addr_data; int regspacing; int regsize; int outputb; int inputb; } ;
struct smi_info {int io_size; TYPE_1__ io; int dev; int io_cleanup; } ;


 int DEVICE_NAME ;
 int EINVAL ;
 int EIO ;
 int ENODEV ;
 int dev_warn (int ,char*,int ) ;
 int port_cleanup ;
 int port_inb ;
 int port_inl ;
 int port_inw ;
 int port_outb ;
 int port_outl ;
 int port_outw ;
 int release_region (unsigned int,int ) ;
 int * request_region (unsigned int,int ,int ) ;

__attribute__((used)) static int port_setup(struct smi_info *info)
{
 unsigned int addr = info->io.addr_data;
 int idx;

 if (!addr)
  return -ENODEV;

 info->io_cleanup = port_cleanup;





 switch (info->io.regsize) {
 case 1:
  info->io.inputb = port_inb;
  info->io.outputb = port_outb;
  break;
 case 2:
  info->io.inputb = port_inw;
  info->io.outputb = port_outw;
  break;
 case 4:
  info->io.inputb = port_inl;
  info->io.outputb = port_outl;
  break;
 default:
  dev_warn(info->dev, "Invalid register size: %d\n",
    info->io.regsize);
  return -EINVAL;
 }







 for (idx = 0; idx < info->io_size; idx++) {
  if (request_region(addr + idx * info->io.regspacing,
       info->io.regsize, DEVICE_NAME) == ((void*)0)) {

   while (idx--) {
    release_region(addr + idx * info->io.regspacing,
            info->io.regsize);
   }
   return -EIO;
  }
 }
 return 0;
}
