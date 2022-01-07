
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int word ;
typedef int u8 ;
typedef unsigned int u16 ;
struct spi_device {int dummy; } ;


 int spi_write (struct spi_device*,int const*,int) ;

__attribute__((used)) static int max7301_write(struct spi_device *spi, unsigned int reg, unsigned int val)
{
 u16 word = ((reg & 0x7F) << 8) | (val & 0xFF);
 return spi_write(spi, (const u8 *)&word, sizeof(word));
}
