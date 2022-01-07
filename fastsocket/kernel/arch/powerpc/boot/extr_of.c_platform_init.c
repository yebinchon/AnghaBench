
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int setprop; int getprop; int finddevice; } ;
struct TYPE_5__ {unsigned long initrd_addr; unsigned long initrd_size; void* promptr; } ;
struct TYPE_4__ {int vmlinux_alloc; int exit; int malloc; int image_hdr; } ;


 TYPE_3__ dt_ops ;
 TYPE_2__ loader_info ;
 int of_console_init () ;
 int of_exit ;
 int of_finddevice ;
 int of_getprop ;
 int of_image_hdr ;
 int of_init (void*) ;
 int of_setprop ;
 int of_try_claim ;
 int of_vmlinux_alloc ;
 TYPE_1__ platform_ops ;

void platform_init(unsigned long a1, unsigned long a2, void *promptr)
{
 platform_ops.image_hdr = of_image_hdr;
 platform_ops.malloc = of_try_claim;
 platform_ops.exit = of_exit;
 platform_ops.vmlinux_alloc = of_vmlinux_alloc;

 dt_ops.finddevice = of_finddevice;
 dt_ops.getprop = of_getprop;
 dt_ops.setprop = of_setprop;

 of_console_init();

 of_init(promptr);
 loader_info.promptr = promptr;
 if (a1 && a2 && a2 != 0xdeadbeef) {
  loader_info.initrd_addr = a1;
  loader_info.initrd_size = a2;
 }
}
