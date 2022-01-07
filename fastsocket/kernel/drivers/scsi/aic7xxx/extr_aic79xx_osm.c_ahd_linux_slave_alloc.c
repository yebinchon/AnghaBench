
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_device {int id; TYPE_1__* host; } ;
struct ahd_softc {int dummy; } ;
struct ahd_linux_device {int openings; scalar_t__ maxtags; } ;
struct TYPE_2__ {scalar_t__ hostdata; } ;


 char* ahd_name (struct ahd_softc*) ;
 scalar_t__ bootverbose ;
 int memset (struct ahd_linux_device*,int ,int) ;
 int printf (char*,char*,int) ;
 struct ahd_linux_device* scsi_transport_device_data (struct scsi_device*) ;

__attribute__((used)) static int
ahd_linux_slave_alloc(struct scsi_device *sdev)
{
 struct ahd_softc *ahd =
  *((struct ahd_softc **)sdev->host->hostdata);
 struct ahd_linux_device *dev;

 if (bootverbose)
  printf("%s: Slave Alloc %d\n", ahd_name(ahd), sdev->id);

 dev = scsi_transport_device_data(sdev);
 memset(dev, 0, sizeof(*dev));





 dev->openings = 1;






 dev->maxtags = 0;

 return (0);
}
