
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {unsigned long top; unsigned long limit; } ;
struct TYPE_3__ {unsigned long limit; unsigned long top; } ;
struct unw_frame_info {TYPE_2__ memstk; TYPE_1__ regstk; } ;



__attribute__((used)) static int
unw_valid(const struct unw_frame_info *info, unsigned long* p)
{
 unsigned long loc = (unsigned long)p;
 return (loc >= info->regstk.limit && loc < info->regstk.top) ||
        (loc >= info->memstk.top && loc < info->memstk.limit);
}
