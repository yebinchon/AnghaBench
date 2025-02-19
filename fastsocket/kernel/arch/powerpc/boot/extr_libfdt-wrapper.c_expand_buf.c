
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ (* realloc ) (scalar_t__,int) ;} ;


 int EXPAND_GRANULARITY ;
 int _ALIGN (int,int ) ;
 scalar_t__ buf ;
 int fatal (char*,int) ;
 scalar_t__ fdt ;
 int fdt_open_into (scalar_t__,scalar_t__,int) ;
 int fdt_strerror (int) ;
 int fdt_totalsize (scalar_t__) ;
 TYPE_1__ platform_ops ;
 scalar_t__ stub1 (scalar_t__,int) ;

__attribute__((used)) static void expand_buf(int minexpand)
{
 int size = fdt_totalsize(fdt);
 int rc;

 size = _ALIGN(size + minexpand, EXPAND_GRANULARITY);
 buf = platform_ops.realloc(buf, size);
 if (!buf)
  fatal("Couldn't find %d bytes to expand device tree\n\r", size);
 rc = fdt_open_into(fdt, buf, size);
 if (rc != 0)
  fatal("Couldn't expand fdt into new buffer: %s\n\r",
        fdt_strerror(rc));

 fdt = buf;
}
