
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Scsi_Host {int dummy; } ;


 int BRSTCNTRL ;
 int CH1 ;
 int CLRCH1 ;
 int CLRSTCNT ;
 int DMACNTRL0 ;
 int DMACNTRL1 ;
 int DO_LOCK (unsigned long) ;
 int DO_UNLOCK (unsigned long) ;
 int FRERR ;
 int FWERR ;
 int RSTFIFO ;
 int SCSISEQ ;
 int SCSISIG ;
 int SETPORT (int ,int) ;
 int SETRATE (int ) ;
 int SSTAT0 ;
 int SSTAT1 ;
 int SSTAT4 ;
 int SXFRCTL0 ;
 int SXFRCTL1 ;
 int SYNCERR ;
 int setup_expected_interrupts (struct Scsi_Host*) ;

__attribute__((used)) static void reset_ports(struct Scsi_Host *shpnt)
{
 unsigned long flags;


 SETPORT(DMACNTRL0, RSTFIFO);

 SETPORT(SCSISEQ, 0);

 SETPORT(SXFRCTL1, 0);
 SETPORT(SCSISIG, 0);
 SETRATE(0);


 SETPORT(SSTAT0, 0x7f);
 SETPORT(SSTAT1, 0xef);

 SETPORT(SSTAT4, SYNCERR | FWERR | FRERR);

 SETPORT(DMACNTRL0, 0);
 SETPORT(DMACNTRL1, 0);

 SETPORT(BRSTCNTRL, 0xf1);


 SETPORT(SXFRCTL0, CH1|CLRCH1|CLRSTCNT);
 SETPORT(SXFRCTL0, CH1);

 DO_LOCK(flags);
 setup_expected_interrupts(shpnt);
 DO_UNLOCK(flags);
}
