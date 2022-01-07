
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43legacy_pioqueue {int txtask; int dev; } ;


 int B43legacy_PIO_TXCTL ;
 int B43legacy_PIO_TXCTL_SUSPEND ;
 int b43legacy_pio_read (struct b43legacy_pioqueue*,int ) ;
 int b43legacy_pio_write (struct b43legacy_pioqueue*,int ,int) ;
 int b43legacy_power_saving_ctl_bits (int ,int,int) ;
 int tasklet_schedule (int *) ;

void b43legacy_pio_tx_resume(struct b43legacy_pioqueue *queue)
{
 b43legacy_pio_write(queue, B43legacy_PIO_TXCTL,
       b43legacy_pio_read(queue, B43legacy_PIO_TXCTL)
       & ~B43legacy_PIO_TXCTL_SUSPEND);
 b43legacy_power_saving_ctl_bits(queue->dev, -1, -1);
 tasklet_schedule(&queue->txtask);
}
