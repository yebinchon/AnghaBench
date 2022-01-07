
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahc_softc {char channel; int instruction_ram_size; int bugs; int flags; int features; int chip; } ;


 int AHC_AIC7892 ;
 int AHC_AIC7892_FE ;
 int AHC_NEWEEPROM_FMT ;
 int AHC_SCBCHAN_UPLOAD_BUG ;

__attribute__((used)) static int
ahc_aic7892_setup(struct ahc_softc *ahc)
{

 ahc->channel = 'A';
 ahc->chip = AHC_AIC7892;
 ahc->features = AHC_AIC7892_FE;
 ahc->flags |= AHC_NEWEEPROM_FMT;
 ahc->bugs |= AHC_SCBCHAN_UPLOAD_BUG;
 ahc->instruction_ram_size = 1024;
 return (0);
}
