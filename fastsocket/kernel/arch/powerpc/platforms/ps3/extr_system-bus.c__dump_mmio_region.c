
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ps3_mmio_region {int lpar_addr; int len; int bus_addr; TYPE_1__* dev; } ;
struct TYPE_2__ {int dev_id; int bus_id; } ;


 int pr_debug (char*,char const*,int,int ,...) ;

__attribute__((used)) static void _dump_mmio_region(const struct ps3_mmio_region* r,
 const char* func, int line)
{
 pr_debug("%s:%d: dev       %llu:%llu\n", func, line, r->dev->bus_id,
  r->dev->dev_id);
 pr_debug("%s:%d: bus_addr  %lxh\n", func, line, r->bus_addr);
 pr_debug("%s:%d: len       %lxh\n", func, line, r->len);
 pr_debug("%s:%d: lpar_addr %lxh\n", func, line, r->lpar_addr);
}
