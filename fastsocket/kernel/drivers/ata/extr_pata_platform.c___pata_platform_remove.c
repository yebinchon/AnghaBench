
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct ata_host {int dummy; } ;


 int ata_host_detach (struct ata_host*) ;
 struct ata_host* dev_get_drvdata (struct device*) ;

int __pata_platform_remove(struct device *dev)
{
 struct ata_host *host = dev_get_drvdata(dev);

 ata_host_detach(host);

 return 0;
}
