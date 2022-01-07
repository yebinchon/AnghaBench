
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int master; } ;


 int PIN_TXD ;
 int setbits (int ,int ,int) ;
 int spi_master_get_devdata (int ) ;

__attribute__((used)) static inline void setmosi(struct spi_device *dev, int on)
{
 setbits(spi_master_get_devdata(dev->master), PIN_TXD, on);
}
