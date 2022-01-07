
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahc_softc {int features; } ;


 int AHC_HVD ;
 int ahc_aha394X_setup (struct ahc_softc*) ;

__attribute__((used)) static int
ahc_aha394Xh_setup(struct ahc_softc *ahc)
{
 int error = ahc_aha394X_setup(ahc);

 ahc->features |= AHC_HVD;

 return error;
}
