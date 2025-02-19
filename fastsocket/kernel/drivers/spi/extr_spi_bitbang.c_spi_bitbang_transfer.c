
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_message {int queue; int status; scalar_t__ actual_length; } ;
struct spi_device {int max_speed_hz; int master; } ;
struct spi_bitbang {int lock; int work; int workqueue; int queue; } ;


 int EINPROGRESS ;
 int ENETDOWN ;
 int list_add_tail (int *,int *) ;
 int queue_work (int ,int *) ;
 struct spi_bitbang* spi_master_get_devdata (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int spi_bitbang_transfer(struct spi_device *spi, struct spi_message *m)
{
 struct spi_bitbang *bitbang;
 unsigned long flags;
 int status = 0;

 m->actual_length = 0;
 m->status = -EINPROGRESS;

 bitbang = spi_master_get_devdata(spi->master);

 spin_lock_irqsave(&bitbang->lock, flags);
 if (!spi->max_speed_hz)
  status = -ENETDOWN;
 else {
  list_add_tail(&m->queue, &bitbang->queue);
  queue_work(bitbang->workqueue, &bitbang->work);
 }
 spin_unlock_irqrestore(&bitbang->lock, flags);

 return status;
}
