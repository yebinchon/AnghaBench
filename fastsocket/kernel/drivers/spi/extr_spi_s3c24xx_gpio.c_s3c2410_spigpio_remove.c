
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int master; } ;
struct s3c2410_spigpio {TYPE_1__ bitbang; } ;
struct platform_device {int dummy; } ;


 struct s3c2410_spigpio* platform_get_drvdata (struct platform_device*) ;
 int spi_bitbang_stop (TYPE_1__*) ;
 int spi_master_put (int ) ;

__attribute__((used)) static int s3c2410_spigpio_remove(struct platform_device *dev)
{
 struct s3c2410_spigpio *sp = platform_get_drvdata(dev);

 spi_bitbang_stop(&sp->bitbang);
 spi_master_put(sp->bitbang.master);

 return 0;
}
