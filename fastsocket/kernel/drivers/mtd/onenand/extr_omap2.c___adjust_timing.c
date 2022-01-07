
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int base; } ;
struct omap2_onenand {int (* setup ) (int ,int ) ;int freq; TYPE_1__ onenand; } ;
struct device {int dummy; } ;


 int BUG_ON (int ) ;
 struct omap2_onenand* dev_get_drvdata (struct device*) ;
 int stub1 (int ,int ) ;

__attribute__((used)) static int __adjust_timing(struct device *dev, void *data)
{
 int ret = 0;
 struct omap2_onenand *c;

 c = dev_get_drvdata(dev);

 BUG_ON(c->setup == ((void*)0));



 ret = c->setup(c->onenand.base, c->freq);

 return ret;
}
