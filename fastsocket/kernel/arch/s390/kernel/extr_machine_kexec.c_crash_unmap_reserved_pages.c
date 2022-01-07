
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int crash_map_pages (int ) ;

void crash_unmap_reserved_pages(void)
{
 crash_map_pages(0);
}
