
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_device {int sdev_target; TYPE_1__* host; } ;
struct ahc_softc {int dummy; } ;
struct TYPE_2__ {scalar_t__ hostdata; } ;


 int KERN_INFO ;
 int ahc_linux_device_queue_depth (struct scsi_device*) ;
 scalar_t__ bootverbose ;
 int sdev_printk (int ,struct scsi_device*,char*) ;
 int spi_dv_device (struct scsi_device*) ;
 int spi_initial_dv (int ) ;

__attribute__((used)) static int
ahc_linux_slave_configure(struct scsi_device *sdev)
{
 struct ahc_softc *ahc;

 ahc = *((struct ahc_softc **)sdev->host->hostdata);

 if (bootverbose)
  sdev_printk(KERN_INFO, sdev, "Slave Configure\n");

 ahc_linux_device_queue_depth(sdev);


 if (!spi_initial_dv(sdev->sdev_target))
  spi_dv_device(sdev);

 return 0;
}
