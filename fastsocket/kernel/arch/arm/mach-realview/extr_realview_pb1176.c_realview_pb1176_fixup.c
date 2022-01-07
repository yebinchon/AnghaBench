
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tag {int dummy; } ;
struct meminfo {int nr_banks; TYPE_1__* bank; } ;
struct machine_desc {int dummy; } ;
struct TYPE_2__ {int size; scalar_t__ start; } ;


 int SZ_128M ;

__attribute__((used)) static void realview_pb1176_fixup(struct machine_desc *mdesc,
      struct tag *tags, char **from,
      struct meminfo *meminfo)
{



 meminfo->bank[0].start = 0;
 meminfo->bank[0].size = SZ_128M;
 meminfo->nr_banks = 1;
}
