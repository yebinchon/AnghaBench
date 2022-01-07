
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct map_info {int dummy; } ;
typedef scalar_t__ ssize_t ;
struct TYPE_3__ {int * x; } ;
typedef TYPE_1__ map_word ;


 int dc21285_write16 (struct map_info*,TYPE_1__,unsigned long) ;

__attribute__((used)) static void dc21285_copy_to_16(struct map_info *map, unsigned long to, const void *from, ssize_t len)
{
 while (len > 0) {
  map_word d;
  d.x[0] = *((uint16_t*)from);
  dc21285_write16(map, d, to);
  from += 2;
  to += 2;
  len -= 2;
 }
}
