
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fw_ohci {int dummy; } ;
struct fw_card {int dummy; } ;


 int EBUSY ;
 int OHCI1394_PhyControl ;
 int OHCI1394_PhyControl_Read (int) ;
 int OHCI1394_PhyControl_ReadData (int) ;
 int OHCI1394_PhyControl_ReadDone ;
 int OHCI1394_PhyControl_Write (int,int) ;
 int flush_writes (struct fw_ohci*) ;
 int fw_error (char*) ;
 struct fw_ohci* fw_ohci (struct fw_card*) ;
 int msleep (int) ;
 int reg_read (struct fw_ohci*,int ) ;
 int reg_write (struct fw_ohci*,int ,int ) ;

__attribute__((used)) static int ohci_update_phy_reg(struct fw_card *card, int addr,
          int clear_bits, int set_bits)
{
 struct fw_ohci *ohci = fw_ohci(card);
 u32 val, old;

 reg_write(ohci, OHCI1394_PhyControl, OHCI1394_PhyControl_Read(addr));
 flush_writes(ohci);
 msleep(2);
 val = reg_read(ohci, OHCI1394_PhyControl);
 if ((val & OHCI1394_PhyControl_ReadDone) == 0) {
  fw_error("failed to set phy reg bits.\n");
  return -EBUSY;
 }

 old = OHCI1394_PhyControl_ReadData(val);
 old = (old & ~clear_bits) | set_bits;
 reg_write(ohci, OHCI1394_PhyControl,
    OHCI1394_PhyControl_Write(addr, old));

 return 0;
}
