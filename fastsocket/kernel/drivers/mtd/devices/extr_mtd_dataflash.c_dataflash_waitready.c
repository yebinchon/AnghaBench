
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dev; } ;


 int DEBUG (int ,char*,int ,int) ;
 int MTD_DEBUG_LEVEL1 ;
 int dataflash_status (struct spi_device*) ;
 int dev_name (int *) ;
 int msleep (int) ;

__attribute__((used)) static int dataflash_waitready(struct spi_device *spi)
{
 int status;

 for (;;) {
  status = dataflash_status(spi);
  if (status < 0) {
   DEBUG(MTD_DEBUG_LEVEL1, "%s: status %d?\n",
     dev_name(&spi->dev), status);
   status = 0;
  }

  if (status & (1 << 7))
   return status;

  msleep(3);
 }
}
