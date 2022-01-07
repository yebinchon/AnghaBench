
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long addr_data; int regsize; int regspacing; int * addr; int outputb; int inputb; } ;
struct smi_info {int io_size; TYPE_1__ io; int dev; int io_cleanup; } ;


 int DEVICE_NAME ;
 int EINVAL ;
 int EIO ;
 int ENODEV ;
 int dev_warn (int ,char*,int) ;
 int intf_mem_inb ;
 int intf_mem_inl ;
 int intf_mem_inw ;
 int intf_mem_outb ;
 int intf_mem_outl ;
 int intf_mem_outw ;
 int * ioremap (unsigned long,int) ;
 int mem_cleanup ;
 int mem_inq ;
 int mem_outq ;
 int release_mem_region (unsigned long,int) ;
 int * request_mem_region (unsigned long,int,int ) ;

__attribute__((used)) static int mem_setup(struct smi_info *info)
{
 unsigned long addr = info->io.addr_data;
 int mapsize;

 if (!addr)
  return -ENODEV;

 info->io_cleanup = mem_cleanup;





 switch (info->io.regsize) {
 case 1:
  info->io.inputb = intf_mem_inb;
  info->io.outputb = intf_mem_outb;
  break;
 case 2:
  info->io.inputb = intf_mem_inw;
  info->io.outputb = intf_mem_outw;
  break;
 case 4:
  info->io.inputb = intf_mem_inl;
  info->io.outputb = intf_mem_outl;
  break;






 default:
  dev_warn(info->dev, "Invalid register size: %d\n",
    info->io.regsize);
  return -EINVAL;
 }
 mapsize = ((info->io_size * info->io.regspacing)
     - (info->io.regspacing - info->io.regsize));

 if (request_mem_region(addr, mapsize, DEVICE_NAME) == ((void*)0))
  return -EIO;

 info->io.addr = ioremap(addr, mapsize);
 if (info->io.addr == ((void*)0)) {
  release_mem_region(addr, mapsize);
  return -EIO;
 }
 return 0;
}
