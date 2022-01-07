
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fixups; } ;


 int PLANETCORE_KEY_MB_RAM ;
 int _dtb_start ;
 scalar_t__ _end ;
 int fdt_init (int ) ;
 int mem_size ;
 int planetcore_get_decimal (char*,int ,int*) ;
 int planetcore_prepare_table (char*) ;
 int planetcore_set_stdout_path (char*) ;
 int platform_fixups ;
 TYPE_1__ platform_ops ;
 int serial_console_init () ;
 int simple_alloc_init (scalar_t__,int,int,int) ;
 char* table ;

void platform_init(unsigned long r3, unsigned long r4, unsigned long r5,
                   unsigned long r6, unsigned long r7)
{
 table = (char *)r3;
 planetcore_prepare_table(table);

 if (!planetcore_get_decimal(table, PLANETCORE_KEY_MB_RAM, &mem_size))
  return;

 mem_size *= 1024 * 1024;
 simple_alloc_init(_end, mem_size - (unsigned long)_end, 32, 64);

 fdt_init(_dtb_start);

 planetcore_set_stdout_path(table);

 serial_console_init();
 platform_ops.fixups = platform_fixups;
}
