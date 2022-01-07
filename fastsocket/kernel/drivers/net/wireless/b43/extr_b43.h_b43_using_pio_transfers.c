
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_wldev {int __using_pio_transfers; } ;



__attribute__((used)) static inline bool b43_using_pio_transfers(struct b43_wldev *dev)
{
 return dev->__using_pio_transfers;
}
