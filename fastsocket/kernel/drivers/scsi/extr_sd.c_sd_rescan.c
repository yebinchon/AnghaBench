
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_disk {int disk; } ;
struct device {int dummy; } ;


 int revalidate_disk (int ) ;
 struct scsi_disk* scsi_disk_get_from_dev (struct device*) ;
 int scsi_disk_put (struct scsi_disk*) ;

__attribute__((used)) static void sd_rescan(struct device *dev)
{
 struct scsi_disk *sdkp = scsi_disk_get_from_dev(dev);

 if (sdkp) {
  revalidate_disk(sdkp->disk);
  scsi_disk_put(sdkp);
 }
}
