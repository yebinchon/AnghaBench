
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ti_ohci {int at_resp_context; int at_req_context; } ;
struct hpsb_host {struct ti_ohci* hostdata; } ;
typedef enum devctl_cmd { ____Placeholder_devctl_cmd } devctl_cmd ;




 int DBGMSG (char*) ;

 int KERN_ERR ;



 int OHCI1394_IsochronousCycleTimer ;
 int OHCI1394_LinkControlClear ;
 int OHCI1394_LinkControlSet ;
 int OHCI1394_LinkControl_CycleMaster ;
 int OHCI1394_LinkControl_CycleSource ;
 int OHCI1394_LinkControl_CycleTimerEnable ;
 int OHCI1394_NodeID ;
 int PRINT (int ,char*) ;
 int PRINT_G (int ,char*,int) ;






 int dma_trm_reset (int *) ;
 int get_phy_reg (struct ti_ohci*,int) ;
 int reg_read (struct ti_ohci*,int ) ;
 int reg_write (struct ti_ohci*,int ,int) ;
 int set_phy_reg (struct ti_ohci*,int,int) ;

__attribute__((used)) static int ohci_devctl(struct hpsb_host *host, enum devctl_cmd cmd, int arg)
{
 struct ti_ohci *ohci = host->hostdata;
 int retval = 0, phy_reg;

 switch (cmd) {
 case 133:
  switch (arg) {
  case 130:
   phy_reg = get_phy_reg(ohci, 5);
   phy_reg |= 0x40;
   set_phy_reg(ohci, 5, phy_reg);
   break;
  case 136:
   phy_reg = get_phy_reg(ohci, 1);
   phy_reg |= 0x40;
   set_phy_reg(ohci, 1, phy_reg);
   break;
  case 128:
   phy_reg = get_phy_reg(ohci, 1);
   if (phy_reg & 0x80) {
    phy_reg &= ~0x80;
    set_phy_reg(ohci, 1, phy_reg);
   }

   phy_reg = get_phy_reg(ohci, 5);
   phy_reg |= 0x40;
   set_phy_reg(ohci, 5, phy_reg);
   break;
  case 134:
   phy_reg = get_phy_reg(ohci, 1);
   phy_reg &= ~0x80;
   phy_reg |= 0x40;
   set_phy_reg(ohci, 1, phy_reg);
   break;
  case 129:
   phy_reg = get_phy_reg(ohci, 1);
   if (!(phy_reg & 0x80)) {
    phy_reg |= 0x80;
    set_phy_reg(ohci, 1, phy_reg);
   }

   phy_reg = get_phy_reg(ohci, 5);
   phy_reg |= 0x40;
   set_phy_reg(ohci, 5, phy_reg);
   break;
  case 135:
   phy_reg = get_phy_reg(ohci, 1);
   phy_reg |= 0xc0;
   set_phy_reg(ohci, 1, phy_reg);
   break;
  default:
   retval = -1;
  }
  break;

 case 137:
  retval = reg_read(ohci, OHCI1394_IsochronousCycleTimer);
  break;

 case 131:
  reg_write(ohci, OHCI1394_IsochronousCycleTimer, arg);
  break;

 case 132:
  PRINT(KERN_ERR, "devctl command SET_BUS_ID err");
  break;

 case 139:
  if (arg) {

   u32 nodeId = reg_read(ohci, OHCI1394_NodeID);
   if ((nodeId & (1<<30)) && (nodeId & 0x3f)) {



    DBGMSG("Cycle master enabled");
    reg_write(ohci, OHCI1394_LinkControlSet,
       OHCI1394_LinkControl_CycleTimerEnable |
       OHCI1394_LinkControl_CycleMaster);
   }
  } else {

   reg_write(ohci, OHCI1394_LinkControlClear,
      OHCI1394_LinkControl_CycleTimerEnable |
      OHCI1394_LinkControl_CycleMaster |
      OHCI1394_LinkControl_CycleSource);
  }
  break;

 case 138:
  DBGMSG("Cancel request received");
  dma_trm_reset(&ohci->at_req_context);
  dma_trm_reset(&ohci->at_resp_context);
  break;

 default:
  PRINT_G(KERN_ERR, "ohci_devctl cmd %d not implemented yet",
   cmd);
  break;
 }
 return retval;
}
