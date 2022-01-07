
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spi_device {int dummy; } ;
struct butterfly {int port; } ;


 int PARPORT_STATUS_BUSY ;
 int parport_read_status (int ) ;
 int spi_miso_bit ;
 struct butterfly* spidev_to_pp (struct spi_device*) ;

__attribute__((used)) static inline int getmiso(struct spi_device *spi)
{
 struct butterfly *pp = spidev_to_pp(spi);
 int value;
 u8 bit;

 bit = spi_miso_bit;


 value = !(parport_read_status(pp->port) & bit);
 return (bit == PARPORT_STATUS_BUSY) ? value : !value;
}
