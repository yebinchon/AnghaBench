
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int parent; } ;
struct spi_master {TYPE_1__ dev; } ;


 int __unregister ;
 int device_for_each_child (int ,TYPE_1__*,int ) ;
 int device_unregister (TYPE_1__*) ;

void spi_unregister_master(struct spi_master *master)
{
 int dummy;

 dummy = device_for_each_child(master->dev.parent, &master->dev,
     __unregister);
 device_unregister(&master->dev);
}
