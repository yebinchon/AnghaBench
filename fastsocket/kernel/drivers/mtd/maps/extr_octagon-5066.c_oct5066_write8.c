
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct map_info {int dummy; } ;
struct TYPE_3__ {int * x; } ;
typedef TYPE_1__ map_word ;


 unsigned long WINDOW_MASK ;
 scalar_t__ iomapadr ;
 int oct5066_page (struct map_info*,unsigned long) ;
 int oct5066_spin ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int writeb (int ,scalar_t__) ;

__attribute__((used)) static void oct5066_write8(struct map_info *map, map_word d, unsigned long adr)
{
 spin_lock(&oct5066_spin);
 oct5066_page(map, adr);
 writeb(d.x[0], iomapadr + (adr & WINDOW_MASK));
 spin_unlock(&oct5066_spin);
}
