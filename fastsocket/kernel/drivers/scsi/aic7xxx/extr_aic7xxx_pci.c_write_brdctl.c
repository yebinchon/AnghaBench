
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ahc_softc {int chip; char channel; int features; } ;


 int AHC_AIC7895 ;
 int AHC_CHIPID_MASK ;
 int AHC_ULTRA2 ;
 int BRDCS ;
 int BRDCTL ;
 int BRDSTB ;
 int BRDSTB_ULTRA2 ;
 int ahc_flush_device_writes (struct ahc_softc*) ;
 int ahc_outb (struct ahc_softc*,int ,int) ;

__attribute__((used)) static void
write_brdctl(struct ahc_softc *ahc, uint8_t value)
{
 uint8_t brdctl;

 if ((ahc->chip & AHC_CHIPID_MASK) == AHC_AIC7895) {
  brdctl = BRDSTB;
   if (ahc->channel == 'B')
   brdctl |= BRDCS;
 } else if ((ahc->features & AHC_ULTRA2) != 0) {
  brdctl = 0;
 } else {
  brdctl = BRDSTB|BRDCS;
 }
 ahc_outb(ahc, BRDCTL, brdctl);
 ahc_flush_device_writes(ahc);
 brdctl |= value;
 ahc_outb(ahc, BRDCTL, brdctl);
 ahc_flush_device_writes(ahc);
 if ((ahc->features & AHC_ULTRA2) != 0)
  brdctl |= BRDSTB_ULTRA2;
 else
  brdctl &= ~BRDSTB;
 ahc_outb(ahc, BRDCTL, brdctl);
 ahc_flush_device_writes(ahc);
 if ((ahc->features & AHC_ULTRA2) != 0)
  brdctl = 0;
 else
  brdctl &= ~BRDCS;
 ahc_outb(ahc, BRDCTL, brdctl);
}
