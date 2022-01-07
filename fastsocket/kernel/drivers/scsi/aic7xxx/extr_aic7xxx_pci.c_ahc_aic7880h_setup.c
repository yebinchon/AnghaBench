
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahc_softc {int features; } ;


 int AHC_HVD ;
 int ahc_aic7880_setup (struct ahc_softc*) ;

__attribute__((used)) static int
ahc_aic7880h_setup(struct ahc_softc *ahc)
{
 int error = ahc_aic7880_setup(ahc);

 ahc->features |= AHC_HVD;

 return error;
}
