
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahc_softc {int dummy; } ;


 int ahc_aha398XX_setup (struct ahc_softc*) ;
 int ahc_aic7880_setup (struct ahc_softc*) ;

__attribute__((used)) static int
ahc_aha398XU_setup(struct ahc_softc *ahc)
{
 int error;

 error = ahc_aic7880_setup(ahc);
 if (error == 0)
  error = ahc_aha398XX_setup(ahc);
 return (error);
}
