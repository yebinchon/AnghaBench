#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ti_ohci {int selfid_buf_bus; int csr_config_rom_bus; int max_packet_size; int /*<<< orphan*/  nb_iso_xmit_ctx; int /*<<< orphan*/  nb_iso_rcv_ctx; TYPE_1__* dev; int /*<<< orphan*/  at_resp_context; int /*<<< orphan*/  at_req_context; int /*<<< orphan*/  ar_resp_context; int /*<<< orphan*/  ar_req_context; int /*<<< orphan*/  phy_reg_lock; } ;
typedef  int quadlet_t ;
typedef  int buf ;
struct TYPE_2__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  KERN_DEBUG ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  OHCI1394_ATRetries ; 
 int /*<<< orphan*/  OHCI1394_AsReqFilterHiSet ; 
 int /*<<< orphan*/  OHCI1394_BusOptions ; 
 int /*<<< orphan*/  OHCI1394_ConfigROMmap ; 
 int /*<<< orphan*/  OHCI1394_GUID_ROM ; 
 int /*<<< orphan*/  OHCI1394_HCControlClear ; 
 int /*<<< orphan*/  OHCI1394_HCControlSet ; 
 int OHCI1394_HCControl_linkEnable ; 
 int OHCI1394_HCControl_noByteSwap ; 
 int OHCI1394_HCControl_postedWriteEnable ; 
 int /*<<< orphan*/  OHCI1394_IntMaskSet ; 
 int /*<<< orphan*/  OHCI1394_IsoRecvIntEventClear ; 
 int /*<<< orphan*/  OHCI1394_IsoRecvIntMaskClear ; 
 int /*<<< orphan*/  OHCI1394_IsoXmitIntEventClear ; 
 int /*<<< orphan*/  OHCI1394_IsoXmitIntMaskClear ; 
 int /*<<< orphan*/  OHCI1394_LinkControlClear ; 
 int /*<<< orphan*/  OHCI1394_LinkControlSet ; 
 int OHCI1394_LinkControl_CycleMaster ; 
 int OHCI1394_LinkControl_CycleTimerEnable ; 
 int OHCI1394_LinkControl_RcvSelfID ; 
 int OHCI1394_MAX_AT_REQ_RETRIES ; 
 int OHCI1394_MAX_AT_RESP_RETRIES ; 
 int OHCI1394_MAX_PHYS_RESP_RETRIES ; 
 int /*<<< orphan*/  OHCI1394_NodeID ; 
 int OHCI1394_PHYS_UPPER_BOUND_PROGRAMMED ; 
 int /*<<< orphan*/  OHCI1394_PhyUpperBound ; 
 scalar_t__ OHCI1394_REGISTER_SIZE ; 
 int OHCI1394_RQPkt ; 
 int OHCI1394_RSPkt ; 
 int /*<<< orphan*/  OHCI1394_SelfIDBuffer ; 
 int /*<<< orphan*/  OHCI1394_Version ; 
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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (struct ti_ohci*,int) ; 
 scalar_t__ hpsb_disable_irm ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct ti_ohci*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ti_ohci*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ti_ohci*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

__attribute__((used)) static void FUNC11(struct ti_ohci *ohci)
{
	quadlet_t buf;
	int num_ports, i;

	FUNC9(&ohci->phy_reg_lock);

	/* Put some defaults to these undefined bus options */
	buf = FUNC6(ohci, OHCI1394_BusOptions);
	buf |=  0x60000000; /* Enable CMC and ISC */
	if (hpsb_disable_irm)
		buf &= ~0x80000000;
	else
		buf |=  0x80000000; /* Enable IRMC */
	buf &= ~0x00ff0000; /* XXX: Set cyc_clk_acc to zero for now */
	buf &= ~0x18000000; /* Disable PMC and BMC */
	FUNC7(ohci, OHCI1394_BusOptions, buf);

	/* Set the bus number */
	FUNC7(ohci, OHCI1394_NodeID, 0x0000ffc0);

	/* Enable posted writes */
	FUNC7(ohci, OHCI1394_HCControlSet, OHCI1394_HCControl_postedWriteEnable);

	/* Clear link control register */
	FUNC7(ohci, OHCI1394_LinkControlClear, 0xffffffff);

	/* Enable cycle timer and cycle master and set the IRM
	 * contender bit in our self ID packets if appropriate. */
	FUNC7(ohci, OHCI1394_LinkControlSet,
		  OHCI1394_LinkControl_CycleTimerEnable |
		  OHCI1394_LinkControl_CycleMaster);
	i = FUNC2(ohci, 4) | PHY_04_LCTRL;
	if (hpsb_disable_irm)
		i &= ~PHY_04_CONTENDER;
	else
		i |= PHY_04_CONTENDER;
	FUNC8(ohci, 4, i);

	/* Set up self-id dma buffer */
	FUNC7(ohci, OHCI1394_SelfIDBuffer, ohci->selfid_buf_bus);

	/* enable self-id */
	FUNC7(ohci, OHCI1394_LinkControlSet, OHCI1394_LinkControl_RcvSelfID);

	/* Set the Config ROM mapping register */
	FUNC7(ohci, OHCI1394_ConfigROMmap, ohci->csr_config_rom_bus);

	/* Now get our max packet size */
	ohci->max_packet_size =
		1<<(((FUNC6(ohci, OHCI1394_BusOptions)>>12)&0xf)+1);
		
	/* Clear the interrupt mask */
	FUNC7(ohci, OHCI1394_IsoRecvIntMaskClear, 0xffffffff);
	FUNC7(ohci, OHCI1394_IsoRecvIntEventClear, 0xffffffff);

	/* Clear the interrupt mask */
	FUNC7(ohci, OHCI1394_IsoXmitIntMaskClear, 0xffffffff);
	FUNC7(ohci, OHCI1394_IsoXmitIntEventClear, 0xffffffff);

	/* Initialize AR dma */
	FUNC3(&ohci->ar_req_context, 0);
	FUNC3(&ohci->ar_resp_context, 0);

	/* Initialize AT dma */
	FUNC4(&ohci->at_req_context);
	FUNC4(&ohci->at_resp_context);
	
	/* Accept AR requests from all nodes */
	FUNC7(ohci, OHCI1394_AsReqFilterHiSet, 0x80000000);

	/* Set the address range of the physical response unit.
	 * Most controllers do not implement it as a writable register though.
	 * They will keep a hardwired offset of 0x00010000 and show 0x0 as
	 * register content.
	 * To actually enable physical responses is the job of our interrupt
	 * handler which programs the physical request filter. */
	FUNC7(ohci, OHCI1394_PhyUpperBound,
		  OHCI1394_PHYS_UPPER_BOUND_PROGRAMMED >> 16);

	FUNC0("physUpperBoundOffset=%08x",
	       FUNC6(ohci, OHCI1394_PhyUpperBound));

	/* Specify AT retries */
	FUNC7(ohci, OHCI1394_ATRetries,
		  OHCI1394_MAX_AT_REQ_RETRIES |
		  (OHCI1394_MAX_AT_RESP_RETRIES<<4) |
		  (OHCI1394_MAX_PHYS_RESP_RETRIES<<8));

	/* We don't want hardware swapping */
	FUNC7(ohci, OHCI1394_HCControlClear, OHCI1394_HCControl_noByteSwap);

	/* Enable interrupts */
	FUNC7(ohci, OHCI1394_IntMaskSet,
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

	/* Enable link */
	FUNC7(ohci, OHCI1394_HCControlSet, OHCI1394_HCControl_linkEnable);

	buf = FUNC6(ohci, OHCI1394_Version);
	FUNC1(KERN_INFO, "OHCI-1394 %d.%d (PCI): IRQ=[%d]  "
	      "MMIO=[%llx-%llx]  Max Packet=[%d]  IR/IT contexts=[%d/%d]",
	      ((((buf) >> 16) & 0xf) + (((buf) >> 20) & 0xf) * 10),
	      ((((buf) >> 4) & 0xf) + ((buf) & 0xf) * 10), ohci->dev->irq,
	      (unsigned long long)FUNC5(ohci->dev, 0),
	      (unsigned long long)FUNC5(ohci->dev, 0) + OHCI1394_REGISTER_SIZE - 1,
	      ohci->max_packet_size,
	      ohci->nb_iso_rcv_ctx, ohci->nb_iso_xmit_ctx);

	/* Check all of our ports to make sure that if anything is
	 * connected, we enable that port. */
	num_ports = FUNC2(ohci, 2) & 0xf;
	for (i = 0; i < num_ports; i++) {
		unsigned int status;

		FUNC8(ohci, 7, i);
		status = FUNC2(ohci, 8);

		if (status & 0x20)
			FUNC8(ohci, 8, status & ~1);
	}

        /* Serial EEPROM Sanity check. */
        if ((ohci->max_packet_size < 512) ||
	    (ohci->max_packet_size > 4096)) {
		/* Serial EEPROM contents are suspect, set a sane max packet
		 * size and print the raw contents for bug reports if verbose
		 * debug is enabled. */
#ifdef CONFIG_IEEE1394_VERBOSEDEBUG
		int i;
#endif

		FUNC1(KERN_DEBUG, "Serial EEPROM has suspicious values, "
                      "attempting to set max_packet_size to 512 bytes");
		FUNC7(ohci, OHCI1394_BusOptions,
			  (FUNC6(ohci, OHCI1394_BusOptions) & 0xf007) | 0x8002);
		ohci->max_packet_size = 512;
#ifdef CONFIG_IEEE1394_VERBOSEDEBUG
		PRINT(KERN_DEBUG, "    EEPROM Present: %d",
		      (reg_read(ohci, OHCI1394_Version) >> 24) & 0x1);
		reg_write(ohci, OHCI1394_GUID_ROM, 0x80000000);

		for (i = 0;
		     ((i < 1000) &&
		      (reg_read(ohci, OHCI1394_GUID_ROM) & 0x80000000)); i++)
			udelay(10);

		for (i = 0; i < 0x20; i++) {
			reg_write(ohci, OHCI1394_GUID_ROM, 0x02000000);
			PRINT(KERN_DEBUG, "    EEPROM %02x: %02x", i,
			      (reg_read(ohci, OHCI1394_GUID_ROM) >> 16) & 0xff);
		}
#endif
	}
}