
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct Scsi_Host {int dummy; } ;
struct TYPE_2__ {int name; } ;


 int ATDONE ;
 int ATNTARG ;
 int BUSFREE ;
 int CH1 ;
 int CLRCH1 ;
 int CLRSTCNT ;
 scalar_t__ CURRENT_SC ;
 int DFIFOEMP ;
 int DFIFOFULL ;
 int DMA ;
 int DMACNTRL0 ;
 int DMADONE ;
 int DMAEN ;
 int DMASTAT ;
 int ENAUTOATNI ;
 int ENAUTOATNO ;
 int ENAUTOATNP ;
 int ENDMA ;
 int ENRESELI ;
 int ENSELI ;
 int ENSELO ;
 int FRERR ;
 int FWERR ;
 int GETPORT (int ) ;
 int GETSTCNT () ;
 int INTEN ;
 int INTSTAT ;
 int PHASECHG ;
 int PHASEMIS ;
 size_t PREVSTATE ;



 int P_MASK ;



 int REQINIT ;
 int RSTFIFO ;
 int SCSIEN ;
 int SCSIPERR ;
 int SCSIRSTI ;
 int SCSIRSTO ;
 int SCSISEQ ;
 int SCSISIG ;
 int SDONE ;
 int SELDI ;
 int SELDO ;
 int SELID ;
 int SELINGO ;
 int SELTO ;
 int SEMPTY ;
 int SFCNT ;
 int SFULL ;
 int SIG_ACKI ;
 int SIG_ATNI ;
 int SIG_BSYI ;
 int SIG_REQI ;
 int SIG_SELI ;
 int SIMODE0 ;
 int SIMODE1 ;
 int SOFFSET ;
 int SPIOEN ;
 int SPIORDY ;
 int SSTAT0 ;
 int SSTAT1 ;
 int SSTAT2 ;
 int SSTAT3 ;
 int SSTAT4 ;
 size_t STATE ;
 int SWINT ;
 int SWRAP ;
 int SXFRCTL0 ;
 int SYNCERR ;
 int TARGET ;
 int TEMODEO ;
 scalar_t__ TESTHI (int ,int ) ;
 int WORDRDY ;
 int WRITE_READ ;
 int _8BIT ;
 int printk (char*,...) ;
 TYPE_1__* states ;

__attribute__((used)) static void disp_ports(struct Scsi_Host *shpnt)
{
}
