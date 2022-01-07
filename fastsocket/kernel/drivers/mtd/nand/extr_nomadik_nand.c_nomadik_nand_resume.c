
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* resume ) (TYPE_1__*) ;} ;
struct nomadik_nand_host {TYPE_1__ mtd; } ;
struct device {int dummy; } ;


 struct nomadik_nand_host* dev_get_drvdata (struct device*) ;
 int stub1 (TYPE_1__*) ;

__attribute__((used)) static int nomadik_nand_resume(struct device *dev)
{
 struct nomadik_nand_host *host = dev_get_drvdata(dev);
 if (host)
  host->mtd.resume(&host->mtd);
 return 0;
}
