
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int bits_per_word; int max_speed_hz; struct mpc52xx_psc_spi_cs* controller_state; int master; } ;
struct mpc52xx_psc_spi_cs {int bits_per_word; int speed_hz; } ;
struct mpc52xx_psc_spi {int lock; int busy; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct mpc52xx_psc_spi_cs* kzalloc (int,int ) ;
 int mpc52xx_psc_spi_deactivate_cs (struct spi_device*) ;
 struct mpc52xx_psc_spi* spi_master_get_devdata (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int mpc52xx_psc_spi_setup(struct spi_device *spi)
{
 struct mpc52xx_psc_spi *mps = spi_master_get_devdata(spi->master);
 struct mpc52xx_psc_spi_cs *cs = spi->controller_state;
 unsigned long flags;

 if (spi->bits_per_word%8)
  return -EINVAL;

 if (!cs) {
  cs = kzalloc(sizeof *cs, GFP_KERNEL);
  if (!cs)
   return -ENOMEM;
  spi->controller_state = cs;
 }

 cs->bits_per_word = spi->bits_per_word;
 cs->speed_hz = spi->max_speed_hz;

 spin_lock_irqsave(&mps->lock, flags);
 if (!mps->busy)
  mpc52xx_psc_spi_deactivate_cs(spi);
 spin_unlock_irqrestore(&mps->lock, flags);

 return 0;
}
