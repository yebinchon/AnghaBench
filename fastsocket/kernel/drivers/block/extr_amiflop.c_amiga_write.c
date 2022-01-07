
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ushort ;
struct TYPE_6__ {TYPE_2__* type; TYPE_1__* dtype; } ;
struct TYPE_5__ {int sect_mult; } ;
struct TYPE_4__ {unsigned int sects; } ;


 unsigned long* putsec (int,unsigned long*,unsigned int) ;
 scalar_t__ raw_buf ;
 TYPE_3__* unit ;

__attribute__((used)) static void amiga_write(int disk)
{
 unsigned int cnt;
 unsigned long *ptr = (unsigned long *)raw_buf;

 disk&=3;

 for (cnt = 0; cnt < 415 * unit[disk].type->sect_mult; cnt++)
  *ptr++ = 0xaaaaaaaa;


 for (cnt = 0; cnt < unit[disk].dtype->sects * unit[disk].type->sect_mult; cnt++)
  ptr = putsec (disk, ptr, cnt);
 *(ushort *)ptr = (ptr[-1]&1) ? 0x2AA8 : 0xAAA8;
}
