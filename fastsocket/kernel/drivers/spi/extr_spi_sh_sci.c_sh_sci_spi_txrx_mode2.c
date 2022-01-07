
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct spi_device {int dummy; } ;


 int bitbang_txrx_be_cpha0 (struct spi_device*,unsigned int,int,int ,int ) ;

__attribute__((used)) static u32 sh_sci_spi_txrx_mode2(struct spi_device *spi,
          unsigned nsecs, u32 word, u8 bits)
{
 return bitbang_txrx_be_cpha0(spi, nsecs, 1, word, bits);
}
