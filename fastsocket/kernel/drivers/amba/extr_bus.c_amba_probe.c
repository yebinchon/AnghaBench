
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int driver; } ;
struct amba_id {int dummy; } ;
struct amba_driver {int (* probe ) (struct amba_device*,struct amba_id*) ;int id_table; } ;
struct amba_device {int dummy; } ;


 struct amba_id* amba_lookup (int ,struct amba_device*) ;
 int stub1 (struct amba_device*,struct amba_id*) ;
 struct amba_device* to_amba_device (struct device*) ;
 struct amba_driver* to_amba_driver (int ) ;

__attribute__((used)) static int amba_probe(struct device *dev)
{
 struct amba_device *pcdev = to_amba_device(dev);
 struct amba_driver *pcdrv = to_amba_driver(dev->driver);
 struct amba_id *id;

 id = amba_lookup(pcdrv->id_table, pcdev);

 return pcdrv->probe(pcdev, id);
}
