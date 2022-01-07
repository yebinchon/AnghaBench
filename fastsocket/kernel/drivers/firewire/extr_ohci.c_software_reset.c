
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_ohci {int dummy; } ;


 int EBUSY ;
 int OHCI1394_HCControlSet ;
 int OHCI1394_HCControl_softReset ;
 int OHCI_LOOP_COUNT ;
 int msleep (int) ;
 int reg_read (struct fw_ohci*,int ) ;
 int reg_write (struct fw_ohci*,int ,int) ;

__attribute__((used)) static int software_reset(struct fw_ohci *ohci)
{
 int i;

 reg_write(ohci, OHCI1394_HCControlSet, OHCI1394_HCControl_softReset);

 for (i = 0; i < OHCI_LOOP_COUNT; i++) {
  if ((reg_read(ohci, OHCI1394_HCControlSet) &
       OHCI1394_HCControl_softReset) == 0)
   return 0;
  msleep(1);
 }

 return -EBUSY;
}
