
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ahd_softc {int seltime; TYPE_1__* platform_data; } ;
struct ahd_platform_data {int dummy; } ;
struct TYPE_3__ {int irq; } ;


 int AHD_LINUX_NOIRQ ;
 int ENOMEM ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int ahd_lockinit (struct ahd_softc*) ;
 int aic79xx_seltime ;
 TYPE_1__* malloc (int,int ,int ) ;
 int memset (TYPE_1__*,int ,int) ;

int
ahd_platform_alloc(struct ahd_softc *ahd, void *platform_arg)
{
 ahd->platform_data =
     malloc(sizeof(struct ahd_platform_data), M_DEVBUF, M_NOWAIT);
 if (ahd->platform_data == ((void*)0))
  return (ENOMEM);
 memset(ahd->platform_data, 0, sizeof(struct ahd_platform_data));
 ahd->platform_data->irq = AHD_LINUX_NOIRQ;
 ahd_lockinit(ahd);
 ahd->seltime = (aic79xx_seltime & 0x3) << 4;
 return (0);
}
