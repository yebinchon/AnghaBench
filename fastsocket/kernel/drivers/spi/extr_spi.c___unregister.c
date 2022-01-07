
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void device ;


 int spi_unregister_device (int ) ;
 int to_spi_device (void*) ;

__attribute__((used)) static int __unregister(struct device *dev, void *master_dev)
{

 if (dev != master_dev)
  spi_unregister_device(to_spi_device(dev));
 return 0;
}
