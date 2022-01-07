
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct b43legacy_pio {struct b43legacy_pioqueue* queue0; struct b43legacy_pioqueue* queue1; struct b43legacy_pioqueue* queue2; struct b43legacy_pioqueue* queue3; } ;
struct b43legacy_wldev {int wl; int irq_mask; TYPE_2__* dev; struct b43legacy_pio pio; } ;
struct b43legacy_pioqueue {int dummy; } ;
struct TYPE_3__ {int revision; } ;
struct TYPE_4__ {TYPE_1__ id; } ;


 int B43legacy_IRQ_PIO_WORKAROUND ;
 int B43legacy_MMIO_PIO1_BASE ;
 int B43legacy_MMIO_PIO2_BASE ;
 int B43legacy_MMIO_PIO3_BASE ;
 int B43legacy_MMIO_PIO4_BASE ;
 int ENOMEM ;
 int b43legacy_destroy_pioqueue (struct b43legacy_pioqueue*) ;
 struct b43legacy_pioqueue* b43legacy_setup_pioqueue (struct b43legacy_wldev*,int ) ;
 int b43legacydbg (int ,char*) ;

int b43legacy_pio_init(struct b43legacy_wldev *dev)
{
 struct b43legacy_pio *pio = &dev->pio;
 struct b43legacy_pioqueue *queue;
 int err = -ENOMEM;

 queue = b43legacy_setup_pioqueue(dev, B43legacy_MMIO_PIO1_BASE);
 if (!queue)
  goto out;
 pio->queue0 = queue;

 queue = b43legacy_setup_pioqueue(dev, B43legacy_MMIO_PIO2_BASE);
 if (!queue)
  goto err_destroy0;
 pio->queue1 = queue;

 queue = b43legacy_setup_pioqueue(dev, B43legacy_MMIO_PIO3_BASE);
 if (!queue)
  goto err_destroy1;
 pio->queue2 = queue;

 queue = b43legacy_setup_pioqueue(dev, B43legacy_MMIO_PIO4_BASE);
 if (!queue)
  goto err_destroy2;
 pio->queue3 = queue;

 if (dev->dev->id.revision < 3)
  dev->irq_mask |= B43legacy_IRQ_PIO_WORKAROUND;

 b43legacydbg(dev->wl, "PIO initialized\n");
 err = 0;
out:
 return err;

err_destroy2:
 b43legacy_destroy_pioqueue(pio->queue2);
 pio->queue2 = ((void*)0);
err_destroy1:
 b43legacy_destroy_pioqueue(pio->queue1);
 pio->queue1 = ((void*)0);
err_destroy0:
 b43legacy_destroy_pioqueue(pio->queue0);
 pio->queue0 = ((void*)0);
 goto out;
}
