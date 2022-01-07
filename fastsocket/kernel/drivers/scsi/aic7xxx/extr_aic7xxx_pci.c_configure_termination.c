
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u_int ;
struct seeprom_descriptor {int sd_MS; int sd_CS; } ;
struct ahc_softc {int features; int flags; } ;


 int AHC_INT50_SPEEDFLEX ;
 int AHC_NEW_TERMCTL ;
 int AHC_SPIOCAP ;
 int AHC_ULTRA2 ;
 int AHC_WIDE ;
 int BRDDAT4 ;
 int BRDDAT5 ;
 int BRDDAT6 ;
 int CFAUTOTERM ;
 int CFSEAUTOTERM ;
 int CFSEHIGHTERM ;
 int CFSELOWTERM ;
 int CFSTERM ;
 int CFWSTERM ;
 int SEEPROM_OUTB (struct seeprom_descriptor*,int) ;
 int STPWEN ;
 int SXFRCTL1 ;
 char* ahc_name (struct ahc_softc*) ;
 int ahc_new_term_detect (struct ahc_softc*,int*,int*,int*,int*,int*) ;
 int ahc_outb (struct ahc_softc*,int ,int) ;
 int aic785X_cable_detect (struct ahc_softc*,int*,int*,int*) ;
 int aic787X_cable_detect (struct ahc_softc*,int*,int*,int*,int*) ;
 scalar_t__ bootverbose ;
 int printf (char*,char*,...) ;
 int write_brdctl (struct ahc_softc*,int ) ;

__attribute__((used)) static void
configure_termination(struct ahc_softc *ahc,
        struct seeprom_descriptor *sd,
        u_int adapter_control,
        u_int *sxfrctl1)
{
 uint8_t brddat;

 brddat = 0;





 *sxfrctl1 = 0;






 SEEPROM_OUTB(sd, sd->sd_MS | sd->sd_CS);
 if ((adapter_control & CFAUTOTERM) != 0
  || (ahc->features & AHC_NEW_TERMCTL) != 0) {
  int internal50_present;
  int internal68_present;
  int externalcable_present;
  int eeprom_present;
  int enableSEC_low;
  int enableSEC_high;
  int enablePRI_low;
  int enablePRI_high;
  int sum;

  enableSEC_low = 0;
  enableSEC_high = 0;
  enablePRI_low = 0;
  enablePRI_high = 0;
  if ((ahc->features & AHC_NEW_TERMCTL) != 0) {
   ahc_new_term_detect(ahc, &enableSEC_low,
         &enableSEC_high,
         &enablePRI_low,
         &enablePRI_high,
         &eeprom_present);
   if ((adapter_control & CFSEAUTOTERM) == 0) {
    if (bootverbose)
     printf("%s: Manual SE Termination\n",
            ahc_name(ahc));
    enableSEC_low = (adapter_control & CFSELOWTERM);
    enableSEC_high =
        (adapter_control & CFSEHIGHTERM);
   }
   if ((adapter_control & CFAUTOTERM) == 0) {
    if (bootverbose)
     printf("%s: Manual LVD Termination\n",
            ahc_name(ahc));
    enablePRI_low = (adapter_control & CFSTERM);
    enablePRI_high = (adapter_control & CFWSTERM);
   }

   internal50_present = 0;
   internal68_present = 1;
   externalcable_present = 1;
  } else if ((ahc->features & AHC_SPIOCAP) != 0) {
   aic785X_cable_detect(ahc, &internal50_present,
          &externalcable_present,
          &eeprom_present);

   internal68_present = 0;
  } else {
   aic787X_cable_detect(ahc, &internal50_present,
          &internal68_present,
          &externalcable_present,
          &eeprom_present);
  }

  if ((ahc->features & AHC_WIDE) == 0)
   internal68_present = 0;

  if (bootverbose
   && (ahc->features & AHC_ULTRA2) == 0) {
   printf("%s: internal 50 cable %s present",
          ahc_name(ahc),
          internal50_present ? "is":"not");

   if ((ahc->features & AHC_WIDE) != 0)
    printf(", internal 68 cable %s present",
           internal68_present ? "is":"not");
   printf("\n%s: external cable %s present\n",
          ahc_name(ahc),
          externalcable_present ? "is":"not");
  }
  if (bootverbose)
   printf("%s: BIOS eeprom %s present\n",
          ahc_name(ahc), eeprom_present ? "is" : "not");

  if ((ahc->flags & AHC_INT50_SPEEDFLEX) != 0) {







   internal50_present = 0;
  }
  if ((ahc->features & AHC_ULTRA2) == 0
   && (internal50_present != 0)
   && (internal68_present != 0)
   && (externalcable_present != 0)) {
   printf("%s: Illegal cable configuration!!. "
          "Only two connectors on the "
          "adapter may be used at a "
          "time!\n", ahc_name(ahc));






    internal50_present = 0;
   internal68_present = 0;
   externalcable_present = 0;
  }

  if ((ahc->features & AHC_WIDE) != 0
   && ((externalcable_present == 0)
    || (internal68_present == 0)
    || (enableSEC_high != 0))) {
   brddat |= BRDDAT6;
   if (bootverbose) {
    if ((ahc->flags & AHC_INT50_SPEEDFLEX) != 0)
     printf("%s: 68 pin termination "
            "Enabled\n", ahc_name(ahc));
    else
     printf("%s: %sHigh byte termination "
            "Enabled\n", ahc_name(ahc),
            enableSEC_high ? "Secondary "
             : "");
   }
  }

  sum = internal50_present + internal68_present
      + externalcable_present;
  if (sum < 2 || (enableSEC_low != 0)) {
   if ((ahc->features & AHC_ULTRA2) != 0)
    brddat |= BRDDAT5;
   else
    *sxfrctl1 |= STPWEN;
   if (bootverbose) {
    if ((ahc->flags & AHC_INT50_SPEEDFLEX) != 0)
     printf("%s: 50 pin termination "
            "Enabled\n", ahc_name(ahc));
    else
     printf("%s: %sLow byte termination "
            "Enabled\n", ahc_name(ahc),
            enableSEC_low ? "Secondary "
            : "");
   }
  }

  if (enablePRI_low != 0) {
   *sxfrctl1 |= STPWEN;
   if (bootverbose)
    printf("%s: Primary Low Byte termination "
           "Enabled\n", ahc_name(ahc));
  }





  ahc_outb(ahc, SXFRCTL1, *sxfrctl1);

  if (enablePRI_high != 0) {
   brddat |= BRDDAT4;
   if (bootverbose)
    printf("%s: Primary High Byte "
           "termination Enabled\n",
           ahc_name(ahc));
  }

  write_brdctl(ahc, brddat);

 } else {
  if ((adapter_control & CFSTERM) != 0) {
   *sxfrctl1 |= STPWEN;

   if (bootverbose)
    printf("%s: %sLow byte termination Enabled\n",
           ahc_name(ahc),
           (ahc->features & AHC_ULTRA2) ? "Primary "
            : "");
  }

  if ((adapter_control & CFWSTERM) != 0
   && (ahc->features & AHC_WIDE) != 0) {
   brddat |= BRDDAT6;
   if (bootverbose)
    printf("%s: %sHigh byte termination Enabled\n",
           ahc_name(ahc),
           (ahc->features & AHC_ULTRA2)
         ? "Secondary " : "");
  }





  ahc_outb(ahc, SXFRCTL1, *sxfrctl1);

  if ((ahc->features & AHC_WIDE) != 0)
   write_brdctl(ahc, brddat);
 }
 SEEPROM_OUTB(sd, sd->sd_MS);
}
