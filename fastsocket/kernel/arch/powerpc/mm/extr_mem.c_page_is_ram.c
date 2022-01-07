
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cnt; TYPE_2__* region; } ;
struct TYPE_6__ {TYPE_1__ memory; } ;
struct TYPE_5__ {unsigned long base; unsigned long size; } ;


 unsigned long PAGE_SHIFT ;
 TYPE_3__ lmb ;
 unsigned long max_pfn ;

int page_is_ram(unsigned long pfn)
{

 return pfn < max_pfn;
}
