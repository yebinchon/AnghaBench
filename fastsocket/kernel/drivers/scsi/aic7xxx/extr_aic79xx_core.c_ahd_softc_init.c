
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahd_softc {int pause; scalar_t__ unpause; } ;


 int PAUSE ;

int
ahd_softc_init(struct ahd_softc *ahd)
{

 ahd->unpause = 0;
 ahd->pause = PAUSE;
 return (0);
}
