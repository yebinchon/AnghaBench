
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tag {int dummy; } ;
struct meminfo {int nr_banks; TYPE_1__* bank; } ;
struct machine_desc {int dummy; } ;
struct TYPE_2__ {int start; void* size; } ;


 void* SZ_256M ;
 void* SZ_512M ;
 int realview_fixup (struct machine_desc*,struct tag*,char**,struct meminfo*) ;

__attribute__((used)) static void realview_pbx_fixup(struct machine_desc *mdesc, struct tag *tags,
          char **from, struct meminfo *meminfo)
{
 realview_fixup(mdesc, tags, from, meminfo);

}
