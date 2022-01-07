
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct spi_mpc8xxx_cs {int hw_mode; } ;
struct spi_device {int mode; int master; struct spi_mpc8xxx_cs* controller_state; int max_speed_hz; } ;
struct mpc8xxx_spi {TYPE_1__* base; } ;
struct TYPE_2__ {int mode; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int SPI_CPHA ;
 int SPI_CPOL ;
 int SPI_LOOP ;
 int SPI_LSB_FIRST ;
 int SPMODE_CI_INACTIVEHIGH ;
 int SPMODE_CP_BEGIN_EDGECLK ;
 int SPMODE_LOOP ;
 int SPMODE_REV ;
 struct spi_mpc8xxx_cs* kzalloc (int,int ) ;
 int mpc8xxx_spi_read_reg (int *) ;
 int mpc8xxx_spi_setup_transfer (struct spi_device*,int *) ;
 struct mpc8xxx_spi* spi_master_get_devdata (int ) ;

__attribute__((used)) static int mpc8xxx_spi_setup(struct spi_device *spi)
{
 struct mpc8xxx_spi *mpc8xxx_spi;
 int retval;
 u32 hw_mode;
 struct spi_mpc8xxx_cs *cs = spi->controller_state;

 if (!spi->max_speed_hz)
  return -EINVAL;

 if (!cs) {
  cs = kzalloc(sizeof *cs, GFP_KERNEL);
  if (!cs)
   return -ENOMEM;
  spi->controller_state = cs;
 }
 mpc8xxx_spi = spi_master_get_devdata(spi->master);

 hw_mode = cs->hw_mode;
 cs->hw_mode = mpc8xxx_spi_read_reg(&mpc8xxx_spi->base->mode);

 cs->hw_mode &= ~(SPMODE_CP_BEGIN_EDGECLK | SPMODE_CI_INACTIVEHIGH
    | SPMODE_REV | SPMODE_LOOP);

 if (spi->mode & SPI_CPHA)
  cs->hw_mode |= SPMODE_CP_BEGIN_EDGECLK;
 if (spi->mode & SPI_CPOL)
  cs->hw_mode |= SPMODE_CI_INACTIVEHIGH;
 if (!(spi->mode & SPI_LSB_FIRST))
  cs->hw_mode |= SPMODE_REV;
 if (spi->mode & SPI_LOOP)
  cs->hw_mode |= SPMODE_LOOP;

 retval = mpc8xxx_spi_setup_transfer(spi, ((void*)0));
 if (retval < 0) {
  cs->hw_mode = hw_mode;
  return retval;
 }
 return 0;
}
