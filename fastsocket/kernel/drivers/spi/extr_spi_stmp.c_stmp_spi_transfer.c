
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stmp_spi {int lock; int work; int workqueue; int queue; } ;
struct spi_message {int queue; int status; } ;
struct spi_device {int master; } ;


 int EINPROGRESS ;
 int list_add_tail (int *,int *) ;
 int queue_work (int ,int *) ;
 struct stmp_spi* spi_master_get_devdata (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int stmp_spi_transfer(struct spi_device *spi, struct spi_message *m)
{
 struct stmp_spi *ss = spi_master_get_devdata(spi->master);
 unsigned long flags;

 m->status = -EINPROGRESS;
 spin_lock_irqsave(&ss->lock, flags);
 list_add_tail(&m->queue, &ss->queue);
 queue_work(ss->workqueue, &ss->work);
 spin_unlock_irqrestore(&ss->lock, flags);
 return 0;
}
