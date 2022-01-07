
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_ohci {int dummy; } ;


 int DBGMSG (char*) ;
 int OHCI1394_HCControlSet ;
 int OHCI1394_HCControl_softReset ;
 int OHCI_LOOP_COUNT ;
 int mdelay (int) ;
 int reg_read (struct ti_ohci*,int ) ;
 int reg_write (struct ti_ohci*,int ,int) ;

__attribute__((used)) static void ohci_soft_reset(struct ti_ohci *ohci) {
 int i;

 reg_write(ohci, OHCI1394_HCControlSet, OHCI1394_HCControl_softReset);

 for (i = 0; i < OHCI_LOOP_COUNT; i++) {
  if (!(reg_read(ohci, OHCI1394_HCControlSet) & OHCI1394_HCControl_softReset))
   break;
  mdelay(1);
 }
 DBGMSG ("Soft reset finished");
}
