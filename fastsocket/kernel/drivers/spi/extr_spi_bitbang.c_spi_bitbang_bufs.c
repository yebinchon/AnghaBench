
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_transfer {int dummy; } ;
struct spi_device {struct spi_bitbang_cs* controller_state; } ;
struct spi_bitbang_cs {unsigned int nsecs; int (* txrx_bufs ) (struct spi_device*,int ,unsigned int,struct spi_transfer*) ;int txrx_word; } ;


 int stub1 (struct spi_device*,int ,unsigned int,struct spi_transfer*) ;

__attribute__((used)) static int spi_bitbang_bufs(struct spi_device *spi, struct spi_transfer *t)
{
 struct spi_bitbang_cs *cs = spi->controller_state;
 unsigned nsecs = cs->nsecs;

 return cs->txrx_bufs(spi, cs->txrx_word, nsecs, t);
}
