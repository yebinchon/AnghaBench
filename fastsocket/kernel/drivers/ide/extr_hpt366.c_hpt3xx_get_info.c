
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ide_host {struct device** dev; scalar_t__ host_priv; } ;
struct hpt_info {int dummy; } ;
struct device {int dummy; } ;


 struct ide_host* dev_get_drvdata (struct device*) ;

__attribute__((used)) static struct hpt_info *hpt3xx_get_info(struct device *dev)
{
 struct ide_host *host = dev_get_drvdata(dev);
 struct hpt_info *info = (struct hpt_info *)host->host_priv;

 return dev == host->dev[1] ? info + 1 : info;
}
