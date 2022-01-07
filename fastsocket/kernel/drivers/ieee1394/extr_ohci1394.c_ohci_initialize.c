
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ti_ohci {int selfid_buf_bus; int csr_config_rom_bus; int max_packet_size; int nb_iso_xmit_ctx; int nb_iso_rcv_ctx; TYPE_1__* dev; int at_resp_context; int at_req_context; int ar_resp_context; int ar_req_context; int phy_reg_lock; } ;
typedef int quadlet_t ;
typedef int buf ;
struct TYPE_2__ {int irq; } ;


 int DBGMSG (char*,int) ;
 int KERN_DEBUG ;
 int KERN_INFO ;
 int OHCI1394_ATRetries ;
 int OHCI1394_AsReqFilterHiSet ;
 int OHCI1394_BusOptions ;
 int OHCI1394_ConfigROMmap ;
 int OHCI1394_GUID_ROM ;
 int OHCI1394_HCControlClear ;
 int OHCI1394_HCControlSet ;
 int OHCI1394_HCControl_linkEnable ;
 int OHCI1394_HCControl_noByteSwap ;
 int OHCI1394_HCControl_postedWriteEnable ;
 int OHCI1394_IntMaskSet ;
 int OHCI1394_IsoRecvIntEventClear ;
 int OHCI1394_IsoRecvIntMaskClear ;
 int OHCI1394_IsoXmitIntEventClear ;
 int OHCI1394_IsoXmitIntMaskClear ;
 int OHCI1394_LinkControlClear ;
 int OHCI1394_LinkControlSet ;
 int OHCI1394_LinkControl_CycleMaster ;
 int OHCI1394_LinkControl_CycleTimerEnable ;
 int OHCI1394_LinkControl_RcvSelfID ;
 int OHCI1394_MAX_AT_REQ_RETRIES ;
 int OHCI1394_MAX_AT_RESP_RETRIES ;
 int OHCI1394_MAX_PHYS_RESP_RETRIES ;
 int OHCI1394_NodeID ;
 int OHCI1394_PHYS_UPPER_BOUND_PROGRAMMED ;
 int OHCI1394_PhyUpperBound ;
 scalar_t__ OHCI1394_REGISTER_SIZE ;
 int OHCI1394_RQPkt ;
 int OHCI1394_RSPkt ;
 int OHCI1394_SelfIDBuffer ;
 int OHCI1394_Version ;
 int OHCI1394_busReset ;
 int OHCI1394_cycleInconsistent ;
 int OHCI1394_cycleTooLong ;
 int OHCI1394_isochRx ;
 int OHCI1394_isochTx ;
 int OHCI1394_masterIntEnable ;
 int OHCI1394_postedWriteErr ;
 int OHCI1394_reqTxComplete ;
 int OHCI1394_respTxComplete ;
 int OHCI1394_selfIDComplete ;
 int OHCI1394_unrecoverableError ;
 int PHY_04_CONTENDER ;
 int PHY_04_LCTRL ;
 int PRINT (int ,char*,...) ;
 int get_phy_reg (struct ti_ohci*,int) ;
 scalar_t__ hpsb_disable_irm ;
 int initialize_dma_rcv_ctx (int *,int ) ;
 int initialize_dma_trm_ctx (int *) ;
 scalar_t__ pci_resource_start (TYPE_1__*,int ) ;
 int reg_read (struct ti_ohci*,int ) ;
 int reg_write (struct ti_ohci*,int ,int) ;
 int set_phy_reg (struct ti_ohci*,int,unsigned int) ;
 int spin_lock_init (int *) ;
 int udelay (int) ;

__attribute__((used)) static void ohci_initialize(struct ti_ohci *ohci)
{
 quadlet_t buf;
 int num_ports, i;

 spin_lock_init(&ohci->phy_reg_lock);


 buf = reg_read(ohci, OHCI1394_BusOptions);
 buf |= 0x60000000;
 if (hpsb_disable_irm)
  buf &= ~0x80000000;
 else
  buf |= 0x80000000;
 buf &= ~0x00ff0000;
 buf &= ~0x18000000;
 reg_write(ohci, OHCI1394_BusOptions, buf);


 reg_write(ohci, OHCI1394_NodeID, 0x0000ffc0);


 reg_write(ohci, OHCI1394_HCControlSet, OHCI1394_HCControl_postedWriteEnable);


 reg_write(ohci, OHCI1394_LinkControlClear, 0xffffffff);



 reg_write(ohci, OHCI1394_LinkControlSet,
    OHCI1394_LinkControl_CycleTimerEnable |
    OHCI1394_LinkControl_CycleMaster);
 i = get_phy_reg(ohci, 4) | PHY_04_LCTRL;
 if (hpsb_disable_irm)
  i &= ~PHY_04_CONTENDER;
 else
  i |= PHY_04_CONTENDER;
 set_phy_reg(ohci, 4, i);


 reg_write(ohci, OHCI1394_SelfIDBuffer, ohci->selfid_buf_bus);


 reg_write(ohci, OHCI1394_LinkControlSet, OHCI1394_LinkControl_RcvSelfID);


 reg_write(ohci, OHCI1394_ConfigROMmap, ohci->csr_config_rom_bus);


 ohci->max_packet_size =
  1<<(((reg_read(ohci, OHCI1394_BusOptions)>>12)&0xf)+1);


 reg_write(ohci, OHCI1394_IsoRecvIntMaskClear, 0xffffffff);
 reg_write(ohci, OHCI1394_IsoRecvIntEventClear, 0xffffffff);


 reg_write(ohci, OHCI1394_IsoXmitIntMaskClear, 0xffffffff);
 reg_write(ohci, OHCI1394_IsoXmitIntEventClear, 0xffffffff);


 initialize_dma_rcv_ctx(&ohci->ar_req_context, 0);
 initialize_dma_rcv_ctx(&ohci->ar_resp_context, 0);


 initialize_dma_trm_ctx(&ohci->at_req_context);
 initialize_dma_trm_ctx(&ohci->at_resp_context);


 reg_write(ohci, OHCI1394_AsReqFilterHiSet, 0x80000000);







 reg_write(ohci, OHCI1394_PhyUpperBound,
    OHCI1394_PHYS_UPPER_BOUND_PROGRAMMED >> 16);

 DBGMSG("physUpperBoundOffset=%08x",
        reg_read(ohci, OHCI1394_PhyUpperBound));


 reg_write(ohci, OHCI1394_ATRetries,
    OHCI1394_MAX_AT_REQ_RETRIES |
    (OHCI1394_MAX_AT_RESP_RETRIES<<4) |
    (OHCI1394_MAX_PHYS_RESP_RETRIES<<8));


 reg_write(ohci, OHCI1394_HCControlClear, OHCI1394_HCControl_noByteSwap);


 reg_write(ohci, OHCI1394_IntMaskSet,
    OHCI1394_unrecoverableError |
    OHCI1394_masterIntEnable |
    OHCI1394_busReset |
    OHCI1394_selfIDComplete |
    OHCI1394_RSPkt |
    OHCI1394_RQPkt |
    OHCI1394_respTxComplete |
    OHCI1394_reqTxComplete |
    OHCI1394_isochRx |
    OHCI1394_isochTx |
    OHCI1394_postedWriteErr |
    OHCI1394_cycleTooLong |
    OHCI1394_cycleInconsistent);


 reg_write(ohci, OHCI1394_HCControlSet, OHCI1394_HCControl_linkEnable);

 buf = reg_read(ohci, OHCI1394_Version);
 PRINT(KERN_INFO, "OHCI-1394 %d.%d (PCI): IRQ=[%d]  "
       "MMIO=[%llx-%llx]  Max Packet=[%d]  IR/IT contexts=[%d/%d]",
       ((((buf) >> 16) & 0xf) + (((buf) >> 20) & 0xf) * 10),
       ((((buf) >> 4) & 0xf) + ((buf) & 0xf) * 10), ohci->dev->irq,
       (unsigned long long)pci_resource_start(ohci->dev, 0),
       (unsigned long long)pci_resource_start(ohci->dev, 0) + OHCI1394_REGISTER_SIZE - 1,
       ohci->max_packet_size,
       ohci->nb_iso_rcv_ctx, ohci->nb_iso_xmit_ctx);



 num_ports = get_phy_reg(ohci, 2) & 0xf;
 for (i = 0; i < num_ports; i++) {
  unsigned int status;

  set_phy_reg(ohci, 7, i);
  status = get_phy_reg(ohci, 8);

  if (status & 0x20)
   set_phy_reg(ohci, 8, status & ~1);
 }


        if ((ohci->max_packet_size < 512) ||
     (ohci->max_packet_size > 4096)) {







  PRINT(KERN_DEBUG, "Serial EEPROM has suspicious values, "
                      "attempting to set max_packet_size to 512 bytes");
  reg_write(ohci, OHCI1394_BusOptions,
     (reg_read(ohci, OHCI1394_BusOptions) & 0xf007) | 0x8002);
  ohci->max_packet_size = 512;
 }
}
