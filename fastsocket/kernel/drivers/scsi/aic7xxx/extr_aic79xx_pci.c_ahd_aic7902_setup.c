
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahd_softc {int features; int chip; } ;


 int AHD_AIC7902 ;
 int AHD_AIC7902_FE ;
 int ahd_aic790X_setup (struct ahd_softc*) ;

__attribute__((used)) static int
ahd_aic7902_setup(struct ahd_softc *ahd)
{
 ahd->chip = AHD_AIC7902;
 ahd->features = AHD_AIC7902_FE;
 return (ahd_aic790X_setup(ahd));
}
