
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
typedef scalar_t__ u32 ;
typedef int (* kernel_entry_t ) (unsigned long,int ,int *) ;
struct TYPE_6__ {int write; } ;
struct TYPE_5__ {unsigned long (* finalize ) () ;} ;
struct TYPE_4__ {int (* exit ) () ;} ;


 int _dtb_start ;
 scalar_t__ _end ;
 scalar_t__ _initrd_end ;
 scalar_t__ _initrd_start ;
 TYPE_3__ console_ops ;
 int dt_fixup_memory (int ,int ) ;
 TYPE_2__ dt_ops ;
 int fdt_init (int ) ;
 void* finddevice (char*) ;
 TYPE_1__ platform_ops ;
 int prep_cmdline (void*) ;
 int printf (char*,...) ;
 int ps3_console_write ;
 int ps3_copy_vectors () ;
 int ps3_exit () ;
 int ps3_repository_read_rm_size (int *) ;
 int setprop_val (void*,char*,scalar_t__) ;
 int simple_alloc_init (scalar_t__,scalar_t__ const,int,int) ;
 unsigned long stub1 () ;
 int stub2 (unsigned long,int ,int *) ;

void platform_init(unsigned long null_check)
{
 const u32 heapsize = 0x1000000 - (u32)_end;
 void *chosen;
 unsigned long ft_addr;
 u64 rm_size;
 unsigned long val;

 console_ops.write = ps3_console_write;
 platform_ops.exit = ps3_exit;

 printf("\n-- PS3 bootwrapper --\n");

 simple_alloc_init(_end, heapsize, 32, 64);
 fdt_init(_dtb_start);

 chosen = finddevice("/chosen");

 ps3_repository_read_rm_size(&rm_size);
 dt_fixup_memory(0, rm_size);

 if (_initrd_end > _initrd_start) {
  setprop_val(chosen, "linux,initrd-start", (u32)(_initrd_start));
  setprop_val(chosen, "linux,initrd-end", (u32)(_initrd_end));
 }

 prep_cmdline(chosen);

 ft_addr = dt_ops.finalize();

 ps3_copy_vectors();

 printf(" flat tree at 0x%lx\n\r", ft_addr);

 val = *(unsigned long *)0;

 if (val != null_check)
  printf("null check failed: %lx != %lx\n\r", val, null_check);

 ((kernel_entry_t)0)(ft_addr, 0, ((void*)0));

 ps3_exit();
}
