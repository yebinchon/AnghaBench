
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct elf_info {scalar_t__ elfoffset; scalar_t__ memsize; } ;
typedef int elfheader ;
struct TYPE_2__ {int exit; int fixups; } ;


 int HEAP_SIZE ;
 int KB ;
 int MB ;
 int _dtb_end ;
 int _dtb_start ;
 scalar_t__ _end ;
 void* _vmlinux_end ;
 void* _vmlinux_start ;
 int bridge_base ;
 int exit () ;
 int fdt_init (char*) ;
 int gunzip_exactly (int *,char*,int) ;
 int gunzip_start (int *,void*,unsigned long) ;
 int gzstate ;
 char* malloc (int) ;
 char* max (char*,char*) ;
 int memmove (char*,int,int) ;
 int mv64x60_get_bridge_base () ;
 int parse_elf32 (char*,struct elf_info*) ;
 TYPE_1__ platform_ops ;
 int prpmc2800_fixups ;
 int prpmc2800_reset ;
 scalar_t__ serial_console_init () ;
 scalar_t__ simple_alloc_init (char*,int ,int,int) ;

void platform_init(unsigned long r3, unsigned long r4, unsigned long r5,
                   unsigned long r6, unsigned long r7)
{
 struct elf_info ei;
 char *heap_start, *dtb;
 int dt_size = _dtb_end - _dtb_start;
 void *vmlinuz_addr = _vmlinux_start;
 unsigned long vmlinuz_size = _vmlinux_end - _vmlinux_start;
 char elfheader[256];

 if (dt_size <= 0)
  exit();
 gunzip_start(&gzstate, vmlinuz_addr, vmlinuz_size);
 gunzip_exactly(&gzstate, elfheader, sizeof(elfheader));

 if (!parse_elf32(elfheader, &ei))
  exit();

 heap_start = (char *)(ei.memsize + ei.elfoffset);
 heap_start = max(heap_start, (char *)_end);

 if ((unsigned)simple_alloc_init(heap_start, HEAP_SIZE, 2*KB, 16)
   > (128*MB))
  exit();


 dtb = malloc(dt_size);
 if (!dtb)
  exit();
 memmove(dtb, _dtb_start, dt_size);
 fdt_init(dtb);

 bridge_base = mv64x60_get_bridge_base();

 platform_ops.fixups = prpmc2800_fixups;
 platform_ops.exit = prpmc2800_reset;

 if (serial_console_init() < 0)
  exit();
}
