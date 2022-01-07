
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct storvsc_device {struct Scsi_Host* host; } ;
struct hv_device {int dummy; } ;
struct Scsi_Host {int dummy; } ;


 struct storvsc_device* hv_get_drvdata (struct hv_device*) ;
 int scsi_host_put (struct Scsi_Host*) ;
 int scsi_remove_host (struct Scsi_Host*) ;
 int storvsc_dev_remove (struct hv_device*) ;

__attribute__((used)) static int storvsc_remove(struct hv_device *dev)
{
 struct storvsc_device *stor_device = hv_get_drvdata(dev);
 struct Scsi_Host *host = stor_device->host;

 scsi_remove_host(host);
 storvsc_dev_remove(dev);
 scsi_host_put(host);

 return 0;
}
