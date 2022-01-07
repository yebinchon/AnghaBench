
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef scalar_t__ u_int ;
struct ahd_softc {int bugs; int flags; int features; scalar_t__ channel; int dev_softc; } ;
typedef int ahd_dev_softc_t ;


 int AHD_ABORT_LQI_BUG ;
 int AHD_AIC79XXB_SLOWCRC ;
 int AHD_AMPLITUDE_DEF ;
 int AHD_AUTOFLUSH_BUG ;
 int AHD_BUSFREEREV_BUG ;
 int AHD_CLRLQO_AUTOCLR_BUG ;
 int AHD_EARLY_REQ_BUG ;
 int AHD_FAINT_LED_BUG ;
 int AHD_FAST_CDB_DELIVERY ;
 int AHD_HP_BOARD ;
 int AHD_INTCOLLISION_BUG ;
 int AHD_LONG_SETIMO_BUG ;
 int AHD_LQOOVERRUN_BUG ;
 int AHD_LQO_ATNO_BUG ;
 int AHD_MDFF_WSCBPTR_BUG ;
 int AHD_MULTI_FUNC ;
 int AHD_NEW_DFCNTRL_OPTS ;
 int AHD_NEW_IOCELL_OPTS ;
 int AHD_NLQICRC_DELAYED_BUG ;
 int AHD_NONPACKFIFO_BUG ;
 int AHD_PACED_NEGTABLE_BUG ;
 int AHD_PCIX_CHIPRST_BUG ;
 int AHD_PCIX_MMAPIO_BUG ;
 int AHD_PCIX_SCBRAM_RD_BUG ;
 int AHD_PKTIZED_STATUS_BUG ;
 int AHD_PKT_BITBUCKET_BUG ;
 int AHD_PKT_LUN_BUG ;
 int AHD_PRECOMP_CUTBACK_29 ;
 int AHD_REG_SLOW_SETTLE_BUG ;
 int AHD_RTI ;
 int AHD_SCSIRST_BUG ;
 int AHD_SENT_SCB_UPDATE_BUG ;
 int AHD_SET_AMPLITUDE (struct ahd_softc*,int ) ;
 int AHD_SET_MODE_BUG ;
 int AHD_SET_PRECOMP (struct ahd_softc*,int ) ;
 int AHD_SET_SLEWRATE (struct ahd_softc*,int ) ;
 int AHD_SLEWRATE_DEF_REVA ;
 int AHD_SLEWRATE_DEF_REVB ;
 int DEVCONFIG1 ;
 int ENXIO ;
 scalar_t__ ID_AIC7902_PCI_REV_A4 ;
 scalar_t__ ID_AIC7902_PCI_REV_B0 ;
 int PCIR_COMMAND ;
 int PCIR_REVID ;
 scalar_t__ PREQDIS ;
 scalar_t__ ahd_get_pci_function (int ) ;
 char* ahd_name (struct ahd_softc*) ;
 scalar_t__ ahd_pci_read_config (int ,int ,int) ;
 int ahd_pci_write_config (int ,int ,scalar_t__,int) ;
 int printf (char*,char*,scalar_t__) ;

__attribute__((used)) static int
ahd_aic790X_setup(struct ahd_softc *ahd)
{
 ahd_dev_softc_t pci;
 u_int rev;

 pci = ahd->dev_softc;
 rev = ahd_pci_read_config(pci, PCIR_REVID, 1);
 if (rev < ID_AIC7902_PCI_REV_A4) {
  printf("%s: Unable to attach to unsupported chip revision %d\n",
         ahd_name(ahd), rev);
  ahd_pci_write_config(pci, PCIR_COMMAND, 0, 2);
  return (ENXIO);
 }
 ahd->channel = ahd_get_pci_function(pci) + 'A';
 if (rev < ID_AIC7902_PCI_REV_B0) {



  ahd->bugs |= AHD_SENT_SCB_UPDATE_BUG|AHD_ABORT_LQI_BUG
     | AHD_PKT_BITBUCKET_BUG|AHD_LONG_SETIMO_BUG
     | AHD_NLQICRC_DELAYED_BUG|AHD_SCSIRST_BUG
     | AHD_LQO_ATNO_BUG|AHD_AUTOFLUSH_BUG
     | AHD_CLRLQO_AUTOCLR_BUG|AHD_PCIX_MMAPIO_BUG
     | AHD_PCIX_CHIPRST_BUG|AHD_PCIX_SCBRAM_RD_BUG
     | AHD_PKTIZED_STATUS_BUG|AHD_PKT_LUN_BUG
     | AHD_MDFF_WSCBPTR_BUG|AHD_REG_SLOW_SETTLE_BUG
     | AHD_SET_MODE_BUG|AHD_BUSFREEREV_BUG
     | AHD_NONPACKFIFO_BUG|AHD_PACED_NEGTABLE_BUG
     | AHD_FAINT_LED_BUG;




  AHD_SET_PRECOMP(ahd, AHD_PRECOMP_CUTBACK_29);

  if ((ahd->flags & AHD_HP_BOARD) == 0)
   AHD_SET_SLEWRATE(ahd, AHD_SLEWRATE_DEF_REVA);
 } else {

  extern uint32_t aic79xx_slowcrc;
  u_int devconfig1;

  ahd->features |= AHD_RTI|AHD_NEW_IOCELL_OPTS
         | AHD_NEW_DFCNTRL_OPTS|AHD_FAST_CDB_DELIVERY
         | AHD_BUSFREEREV_BUG;
  ahd->bugs |= AHD_LQOOVERRUN_BUG|AHD_EARLY_REQ_BUG;


  if (aic79xx_slowcrc)
   ahd->features |= AHD_AIC79XXB_SLOWCRC;




  if ((ahd->features & AHD_MULTI_FUNC) != 0)
   ahd->bugs |= AHD_INTCOLLISION_BUG|AHD_ABORT_LQI_BUG;




  AHD_SET_PRECOMP(ahd, AHD_PRECOMP_CUTBACK_29);
  AHD_SET_SLEWRATE(ahd, AHD_SLEWRATE_DEF_REVB);
  AHD_SET_AMPLITUDE(ahd, AHD_AMPLITUDE_DEF);







  devconfig1 = ahd_pci_read_config(pci, DEVCONFIG1, 1);
  ahd_pci_write_config(pci, DEVCONFIG1,
         devconfig1|PREQDIS, 1);
  devconfig1 = ahd_pci_read_config(pci, DEVCONFIG1, 1);
 }

 return (0);
}
