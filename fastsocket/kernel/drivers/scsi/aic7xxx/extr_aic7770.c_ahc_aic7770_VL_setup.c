
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahc_softc {int chip; } ;


 int AHC_VL ;
 int ahc_aic7770_setup (struct ahc_softc*) ;

__attribute__((used)) static int
ahc_aic7770_VL_setup(struct ahc_softc *ahc)
{
 int error;

 error = ahc_aic7770_setup(ahc);
 ahc->chip |= AHC_VL;
 return (error);
}
