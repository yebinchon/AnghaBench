
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {struct butterfly* controller_data; } ;
struct butterfly {int dummy; } ;



__attribute__((used)) static inline struct butterfly *spidev_to_pp(struct spi_device *spi)
{
 return spi->controller_data;
}
