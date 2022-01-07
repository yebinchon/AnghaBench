
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int modalias; } ;
struct kobj_uevent_env {int dummy; } ;
struct device {int dummy; } ;


 int SPI_MODULE_PREFIX ;
 int add_uevent_var (struct kobj_uevent_env*,char*,int ,int ) ;
 struct spi_device* to_spi_device (struct device*) ;

__attribute__((used)) static int spi_uevent(struct device *dev, struct kobj_uevent_env *env)
{
 const struct spi_device *spi = to_spi_device(dev);

 add_uevent_var(env, "MODALIAS=%s%s", SPI_MODULE_PREFIX, spi->modalias);
 return 0;
}
