
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int word ;
typedef int u8 ;
typedef int u16 ;
struct spi_device {int dummy; } ;


 int spi_read (struct spi_device*,int *,int) ;
 int spi_write (struct spi_device*,int const*,int) ;

__attribute__((used)) static int max7301_read(struct spi_device *spi, unsigned int reg)
{
 int ret;
 u16 word;

 word = 0x8000 | (reg << 8);
 ret = spi_write(spi, (const u8 *)&word, sizeof(word));
 if (ret)
  return ret;




 ret = spi_read(spi, (u8 *)&word, sizeof(word));
 if (ret)
  return ret;
 return word & 0xff;
}
