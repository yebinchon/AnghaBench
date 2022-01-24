#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct ti_pcl {int pcl_status; } ;
struct TYPE_9__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  chan_count; } ;
struct TYPE_11__ {int /*<<< orphan*/  next; } ;
struct TYPE_8__ {int /*<<< orphan*/  queue_lock; int /*<<< orphan*/  data_dma; int /*<<< orphan*/  header_dma; TYPE_4__ pcl_queue; int /*<<< orphan*/  pcl; int /*<<< orphan*/  queue; } ;
struct TYPE_10__ {int /*<<< orphan*/  reg_1394a; } ;
struct ti_lynx {int selfid_size; int phy_reg0; int /*<<< orphan*/  id; TYPE_2__ iso_rcv; TYPE_1__ async; int /*<<< orphan*/  dev; TYPE_3__ phyic; } ;
struct hpsb_packet {int /*<<< orphan*/  driver_list; int /*<<< orphan*/  data_size; int /*<<< orphan*/  header_size; } ;
struct hpsb_host {struct ti_lynx* hostdata; } ;
typedef  enum devctl_cmd { ____Placeholder_devctl_cmd } devctl_cmd ;

/* Variables and functions */
 int ACKX_ABORTED ; 
 int ACKX_SEND_ERROR ; 
 int ACKX_TIMEOUT ; 
#define  ACT_CYCLE_MASTER 141 
#define  CANCEL_REQUESTS 140 
 int /*<<< orphan*/  CHANNEL_ASYNC_SEND ; 
 int /*<<< orphan*/  CHANNEL_ISO_RCV ; 
 int /*<<< orphan*/  CYCLE_TIMER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int DMA_CHAN_STAT_PKTCMPL ; 
 int DMA_CHAN_STAT_SPECIALACK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int DMA_WORD1_CMP_ENABLE_MASTER ; 
#define  GET_CYCLE_COUNTER 139 
#define  ISO_LISTEN_CHANNEL 138 
#define  ISO_UNLISTEN_CHANNEL 137 
 int /*<<< orphan*/  KERN_DEBUG ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  LINK_CONTROL ; 
 int /*<<< orphan*/  LINK_CONTROL_CYCMASTER ; 
 int /*<<< orphan*/  LINK_ID ; 
 int LINK_INT_PHY_BUSRESET ; 
 int /*<<< orphan*/  LINK_INT_STATUS ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__) ; 
#define  LONG_RESET 136 
#define  LONG_RESET_FORCE_ROOT 135 
#define  LONG_RESET_NO_FORCE_ROOT 134 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
#define  RESET_BUS 133 
#define  SET_BUS_ID 132 
#define  SET_CYCLE_COUNTER 131 
#define  SHORT_RESET 130 
#define  SHORT_RESET_FORCE_ROOT 129 
#define  SHORT_RESET_NO_FORCE_ROOT 128 
 struct hpsb_packet* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ti_lynx*,int /*<<< orphan*/ ,struct ti_pcl*) ; 
 int FUNC7 (struct ti_lynx*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct hpsb_host*,struct hpsb_packet*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 TYPE_4__ packet_list ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct ti_lynx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct ti_lynx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct ti_lynx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct ti_lynx*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (struct ti_lynx*,int,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC20(struct hpsb_host *host, enum devctl_cmd cmd, int arg)
{
        struct ti_lynx *lynx = host->hostdata;
        int retval = 0;
        struct hpsb_packet *packet;
	FUNC2(packet_list);
        unsigned long flags;
	int phy_reg;

        switch (cmd) {
        case RESET_BUS:
                if (FUNC14(lynx, LINK_INT_STATUS) & LINK_INT_PHY_BUSRESET) {
                        retval = 0;
                        break;
                }

		switch (arg) {
		case SHORT_RESET:
			if (lynx->phyic.reg_1394a) {
				phy_reg = FUNC7(lynx, 5);
				if (phy_reg == -1) {
					FUNC3(KERN_ERR, lynx->id, "cannot reset bus, because read phy reg failed");
					retval = -1;
					break;
				}
				phy_reg |= 0x40;

				FUNC3(KERN_INFO, lynx->id, "resetting bus (short bus reset) on request");

				lynx->selfid_size = -1;
				lynx->phy_reg0 = -1;
				FUNC17(lynx, 5, phy_reg); /* set ISBR */
				break;
			} else {
				FUNC3(KERN_INFO, lynx->id, "cannot do short bus reset, because of old phy");
				/* fall through to long bus reset */
			}
		case LONG_RESET:
			phy_reg = FUNC7(lynx, 1);
			if (phy_reg == -1) {
				FUNC3(KERN_ERR, lynx->id, "cannot reset bus, because read phy reg failed");
				retval = -1;
				break;
			}
			phy_reg |= 0x40;

			FUNC3(KERN_INFO, lynx->id, "resetting bus (long bus reset) on request");

			lynx->selfid_size = -1;
			lynx->phy_reg0 = -1;
			FUNC17(lynx, 1, phy_reg); /* clear RHB, set IBR */
			break;
		case SHORT_RESET_NO_FORCE_ROOT:
			if (lynx->phyic.reg_1394a) {
				phy_reg = FUNC7(lynx, 1);
				if (phy_reg == -1) {
					FUNC3(KERN_ERR, lynx->id, "cannot reset bus, because read phy reg failed");
					retval = -1;
					break;
				}
				if (phy_reg & 0x80) {
					phy_reg &= ~0x80;
					FUNC17(lynx, 1, phy_reg); /* clear RHB */
				}

				phy_reg = FUNC7(lynx, 5);
				if (phy_reg == -1) {
					FUNC3(KERN_ERR, lynx->id, "cannot reset bus, because read phy reg failed");
					retval = -1;
					break;
				}
				phy_reg |= 0x40;

				FUNC3(KERN_INFO, lynx->id, "resetting bus (short bus reset, no force_root) on request");

				lynx->selfid_size = -1;
				lynx->phy_reg0 = -1;
				FUNC17(lynx, 5, phy_reg); /* set ISBR */
				break;
			} else {
				FUNC3(KERN_INFO, lynx->id, "cannot do short bus reset, because of old phy");
				/* fall through to long bus reset */
			}
		case LONG_RESET_NO_FORCE_ROOT:
			phy_reg = FUNC7(lynx, 1);
			if (phy_reg == -1) {
				FUNC3(KERN_ERR, lynx->id, "cannot reset bus, because read phy reg failed");
				retval = -1;
				break;
			}
			phy_reg &= ~0x80;
			phy_reg |= 0x40;

			FUNC3(KERN_INFO, lynx->id, "resetting bus (long bus reset, no force_root) on request");

			lynx->selfid_size = -1;
			lynx->phy_reg0 = -1;
			FUNC17(lynx, 1, phy_reg); /* clear RHB, set IBR */
			break;
		case SHORT_RESET_FORCE_ROOT:
			if (lynx->phyic.reg_1394a) {
				phy_reg = FUNC7(lynx, 1);
				if (phy_reg == -1) {
					FUNC3(KERN_ERR, lynx->id, "cannot reset bus, because read phy reg failed");
					retval = -1;
					break;
				}
				if (!(phy_reg & 0x80)) {
					phy_reg |= 0x80;
					FUNC17(lynx, 1, phy_reg); /* set RHB */
				}

				phy_reg = FUNC7(lynx, 5);
				if (phy_reg == -1) {
					FUNC3(KERN_ERR, lynx->id, "cannot reset bus, because read phy reg failed");
					retval = -1;
					break;
				}
				phy_reg |= 0x40;

				FUNC3(KERN_INFO, lynx->id, "resetting bus (short bus reset, force_root set) on request");

				lynx->selfid_size = -1;
				lynx->phy_reg0 = -1;
				FUNC17(lynx, 5, phy_reg); /* set ISBR */
				break;
			} else {
				FUNC3(KERN_INFO, lynx->id, "cannot do short bus reset, because of old phy");
				/* fall through to long bus reset */
			}
		case LONG_RESET_FORCE_ROOT:
			phy_reg = FUNC7(lynx, 1);
			if (phy_reg == -1) {
				FUNC3(KERN_ERR, lynx->id, "cannot reset bus, because read phy reg failed");
				retval = -1;
				break;
			}
			phy_reg |= 0xc0;

			FUNC3(KERN_INFO, lynx->id, "resetting bus (long bus reset, force_root set) on request");

			lynx->selfid_size = -1;
			lynx->phy_reg0 = -1;
			FUNC17(lynx, 1, phy_reg); /* set IBR and RHB */
			break;
		default:
			FUNC3(KERN_ERR, lynx->id, "unknown argument for reset_bus command %d", arg);
			retval = -1;
		}

                break;

        case GET_CYCLE_COUNTER:
                retval = FUNC14(lynx, CYCLE_TIMER);
                break;

        case SET_CYCLE_COUNTER:
                FUNC16(lynx, CYCLE_TIMER, arg);
                break;

        case SET_BUS_ID:
                FUNC16(lynx, LINK_ID,
                          (arg << 22) | (FUNC14(lynx, LINK_ID) & 0x003f0000));
                break;

        case ACT_CYCLE_MASTER:
                if (arg) {
                        FUNC15(lynx, LINK_CONTROL,
                                     LINK_CONTROL_CYCMASTER);
                } else {
                        FUNC13(lynx, LINK_CONTROL,
                                       LINK_CONTROL_CYCMASTER);
                }
                break;

        case CANCEL_REQUESTS:
                FUNC18(&lynx->async.queue_lock, flags);

                FUNC16(lynx, FUNC0(CHANNEL_ASYNC_SEND), 0);
		FUNC11(&lynx->async.queue, &packet_list);

                if (FUNC10(&lynx->async.pcl_queue)) {
                        FUNC19(&lynx->async.queue_lock, flags);
                        FUNC4(KERN_DEBUG, lynx->id, "no async packet in PCL to cancel");
                } else {
                        struct ti_pcl pcl;
                        u32 ack;

                        FUNC3(KERN_INFO, lynx->id, "cancelling async packet, that was already in PCL");

                        FUNC6(lynx, lynx->async.pcl, &pcl);

                        packet = FUNC5(lynx->async.pcl_queue.next);
			FUNC9(&packet->driver_list);

                        FUNC12(lynx->dev, lynx->async.header_dma,
                                         packet->header_size, PCI_DMA_TODEVICE);
                        if (packet->data_size) {
                                FUNC12(lynx->dev, lynx->async.data_dma,
                                                 packet->data_size, PCI_DMA_TODEVICE);
                        }

                        FUNC19(&lynx->async.queue_lock, flags);

                        if (pcl.pcl_status & DMA_CHAN_STAT_PKTCMPL) {
                                if (pcl.pcl_status & DMA_CHAN_STAT_SPECIALACK) {
                                        ack = (pcl.pcl_status >> 15) & 0xf;
                                        FUNC4(KERN_INFO, lynx->id, "special ack %d", ack);
                                        ack = (ack == 1 ? ACKX_TIMEOUT : ACKX_SEND_ERROR);
                                } else {
                                        ack = (pcl.pcl_status >> 15) & 0xf;
                                }
                        } else {
                                FUNC3(KERN_INFO, lynx->id, "async packet was not completed");
                                ack = ACKX_ABORTED;
                        }
                        FUNC8(host, packet, ack);
                }

		while (!FUNC10(&packet_list)) {
			packet = FUNC5(packet_list.next);
			FUNC9(&packet->driver_list);
			FUNC8(host, packet, ACKX_ABORTED);
		}

                break;
#if 0 /* has been removed from ieee1394 core */
        case ISO_LISTEN_CHANNEL:
                spin_lock_irqsave(&lynx->iso_rcv.lock, flags);

                if (lynx->iso_rcv.chan_count++ == 0) {
                        reg_write(lynx, DMA_WORD1_CMP_ENABLE(CHANNEL_ISO_RCV),
                                  DMA_WORD1_CMP_ENABLE_MASTER);
                }

                spin_unlock_irqrestore(&lynx->iso_rcv.lock, flags);
                break;

        case ISO_UNLISTEN_CHANNEL:
                spin_lock_irqsave(&lynx->iso_rcv.lock, flags);

                if (--lynx->iso_rcv.chan_count == 0) {
                        reg_write(lynx, DMA_WORD1_CMP_ENABLE(CHANNEL_ISO_RCV),
                                  0);
                }

                spin_unlock_irqrestore(&lynx->iso_rcv.lock, flags);
                break;
#endif
        default:
                FUNC3(KERN_ERR, lynx->id, "unknown devctl command %d", cmd);
                retval = -1;
        }

        return retval;
}