
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct b43legacy_pio {TYPE_4__* queue3; TYPE_3__* queue2; TYPE_2__* queue1; TYPE_1__* queue0; } ;
struct b43legacy_wldev {struct b43legacy_pio pio; } ;
struct TYPE_8__ {int tx_frozen; } ;
struct TYPE_7__ {int tx_frozen; } ;
struct TYPE_6__ {int tx_frozen; } ;
struct TYPE_5__ {int tx_frozen; } ;


 int B43legacy_WARN_ON (int) ;
 int b43legacy_using_pio (struct b43legacy_wldev*) ;

void b43legacy_pio_freeze_txqueues(struct b43legacy_wldev *dev)
{
 struct b43legacy_pio *pio;

 B43legacy_WARN_ON(!b43legacy_using_pio(dev));
 pio = &dev->pio;
 pio->queue0->tx_frozen = 1;
 pio->queue1->tx_frozen = 1;
 pio->queue2->tx_frozen = 1;
 pio->queue3->tx_frozen = 1;
}
