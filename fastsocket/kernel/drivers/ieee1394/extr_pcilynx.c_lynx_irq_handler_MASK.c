#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct ti_pcl {int pcl_status; } ;
struct TYPE_8__ {int /*<<< orphan*/  next; } ;
struct TYPE_7__ {int /*<<< orphan*/  queue_lock; TYPE_4__ queue; int /*<<< orphan*/  data_dma; int /*<<< orphan*/  header_dma; TYPE_4__ pcl_queue; int /*<<< orphan*/  pcl; } ;
struct TYPE_6__ {int /*<<< orphan*/  queue_lock; TYPE_4__ queue; int /*<<< orphan*/  data_dma; int /*<<< orphan*/  header_dma; TYPE_4__ pcl_queue; int /*<<< orphan*/  pcl; } ;
struct TYPE_5__ {size_t next; int last; int /*<<< orphan*/  tq; int /*<<< orphan*/  lock; int /*<<< orphan*/  pcl_start; int /*<<< orphan*/  chan_count; int /*<<< orphan*/  used; void** stat; } ;
struct ti_lynx {int selfid_size; int phy_reg0; int* rcv_page; int /*<<< orphan*/  rcv_pcl_start; int /*<<< orphan*/  id; TYPE_3__ iso_send; int /*<<< orphan*/  dev; TYPE_2__ async; TYPE_1__ iso_rcv; int /*<<< orphan*/  phy_reg_lock; struct hpsb_host* host; } ;
struct hpsb_packet {scalar_t__ data_size; scalar_t__ header_size; int /*<<< orphan*/  driver_list; } ;
struct hpsb_host {scalar_t__ in_bus_reset; } ;
typedef  int quadlet_t ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int ACKX_SEND_ERROR ; 
 int ACKX_TIMEOUT ; 
 int /*<<< orphan*/  CHANNEL_ASYNC_RCV ; 
 int /*<<< orphan*/  CHANNEL_ASYNC_SEND ; 
 int /*<<< orphan*/  CHANNEL_ISO_RCV ; 
 int /*<<< orphan*/  CHANNEL_ISO_SEND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int DMA_CHAN_STAT_PKTCMPL ; 
 int DMA_CHAN_STAT_SELFID ; 
 int DMA_CHAN_STAT_SPECIALACK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FIFO_CONTROL ; 
 int FIFO_CONTROL_GRF_FLUSH ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  KERN_DEBUG ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 int LINK_INT_ASYNC_STUCK ; 
 int LINK_INT_ATF_UNDERFLOW ; 
 int LINK_INT_GRF_OVERFLOW ; 
 int LINK_INT_ISO_STUCK ; 
 int LINK_INT_ITF_UNDERFLOW ; 
 int LINK_INT_PHY_BUSRESET ; 
 int LINK_INT_PHY_REG_RCVD ; 
 int LINK_INT_PHY_TIMEOUT ; 
 int LINK_INT_SENT_REJECT ; 
 int /*<<< orphan*/  LINK_INT_STATUS ; 
 int LINK_INT_TX_INVALID_TC ; 
 int /*<<< orphan*/  LINK_PHY ; 
 int NUM_ISORCV_PCL ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int PCI_INT_1394 ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int PCI_INT_INT_PEND ; 
 int /*<<< orphan*/  PCI_INT_STATUS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int TCODE_READQ_RESPONSE ; 
 int TCODE_WRITEQ ; 
 int /*<<< orphan*/  FUNC5 (int*) ; 
 struct hpsb_packet* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ti_lynx*,int /*<<< orphan*/ ,struct ti_pcl*) ; 
 int /*<<< orphan*/  FUNC8 (struct ti_lynx*,struct hpsb_host*) ; 
 int /*<<< orphan*/  hpsb_async ; 
 int /*<<< orphan*/  FUNC9 (struct hpsb_host*) ; 
 int /*<<< orphan*/  hpsb_iso ; 
 int /*<<< orphan*/  FUNC10 (struct hpsb_host*,int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct hpsb_host*,struct hpsb_packet*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 void* FUNC15 (struct ti_lynx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct ti_lynx*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (struct ti_lynx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct ti_lynx*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct ti_lynx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC23(int irq, void *dev_id)
{
        struct ti_lynx *lynx = (struct ti_lynx *)dev_id;
        struct hpsb_host *host = lynx->host;
        u32 intmask;
        u32 linkint;

        linkint = FUNC15(lynx, LINK_INT_STATUS);
        intmask = FUNC15(lynx, PCI_INT_STATUS);

        if (!(intmask & PCI_INT_INT_PEND))
		return IRQ_NONE;

        FUNC4(KERN_DEBUG, lynx->id, "interrupt: 0x%08x / 0x%08x", intmask,
               linkint);

        FUNC16(lynx, LINK_INT_STATUS, linkint);
        FUNC16(lynx, PCI_INT_STATUS, intmask);

        if (intmask & PCI_INT_1394) {
                if (linkint & LINK_INT_PHY_TIMEOUT) {
                        FUNC3(KERN_INFO, lynx->id, "PHY timeout occurred");
                }
                if (linkint & LINK_INT_PHY_BUSRESET) {
                        FUNC3(KERN_INFO, lynx->id, "bus reset interrupt");
                        lynx->selfid_size = -1;
                        lynx->phy_reg0 = -1;
                        if (!host->in_bus_reset)
                                FUNC9(host);
                }
                if (linkint & LINK_INT_PHY_REG_RCVD) {
                        u32 reg;

                        FUNC20(&lynx->phy_reg_lock);
                        reg = FUNC15(lynx, LINK_PHY);
                        FUNC21(&lynx->phy_reg_lock);

                        if (!host->in_bus_reset) {
                                FUNC3(KERN_INFO, lynx->id,
                                      "phy reg received without reset");
                        } else if (reg & 0xf00) {
                                FUNC3(KERN_INFO, lynx->id,
                                      "unsolicited phy reg %d received",
                                      (reg >> 8) & 0xf);
                        } else {
                                lynx->phy_reg0 = reg & 0xff;
                                FUNC8(lynx, host);
                        }
                }
                if (linkint & LINK_INT_ISO_STUCK) {
                        FUNC3(KERN_INFO, lynx->id, "isochronous transmitter stuck");
                }
                if (linkint & LINK_INT_ASYNC_STUCK) {
                        FUNC3(KERN_INFO, lynx->id, "asynchronous transmitter stuck");
                }
                if (linkint & LINK_INT_SENT_REJECT) {
                        FUNC3(KERN_INFO, lynx->id, "sent reject");
                }
                if (linkint & LINK_INT_TX_INVALID_TC) {
                        FUNC3(KERN_INFO, lynx->id, "invalid transaction code");
                }
                if (linkint & LINK_INT_GRF_OVERFLOW) {
                        /* flush FIFO if overflow happens during reset */
                        if (host->in_bus_reset)
                                FUNC16(lynx, FIFO_CONTROL,
                                          FIFO_CONTROL_GRF_FLUSH);
                        FUNC3(KERN_INFO, lynx->id, "GRF overflow");
                }
                if (linkint & LINK_INT_ITF_UNDERFLOW) {
                        FUNC3(KERN_INFO, lynx->id, "ITF underflow");
                }
                if (linkint & LINK_INT_ATF_UNDERFLOW) {
                        FUNC3(KERN_INFO, lynx->id, "ATF underflow");
                }
        }

        if (intmask & FUNC2(CHANNEL_ISO_RCV)) {
                FUNC4(KERN_DEBUG, lynx->id, "iso receive");

                FUNC20(&lynx->iso_rcv.lock);

                lynx->iso_rcv.stat[lynx->iso_rcv.next] =
                        FUNC15(lynx, FUNC0(CHANNEL_ISO_RCV));

                lynx->iso_rcv.used++;
                lynx->iso_rcv.next = (lynx->iso_rcv.next + 1) % NUM_ISORCV_PCL;

                if ((lynx->iso_rcv.next == lynx->iso_rcv.last)
                    || !lynx->iso_rcv.chan_count) {
                        FUNC4(KERN_DEBUG, lynx->id, "stopped");
                        FUNC16(lynx, FUNC1(CHANNEL_ISO_RCV), 0);
                }

                FUNC18(lynx, lynx->iso_rcv.pcl_start, lynx->iso_rcv.next,
                            CHANNEL_ISO_RCV);

                FUNC21(&lynx->iso_rcv.lock);

		FUNC22(&lynx->iso_rcv.tq);
        }

        if (intmask & FUNC2(CHANNEL_ASYNC_SEND)) {
                FUNC4(KERN_DEBUG, lynx->id, "async sent");
                FUNC20(&lynx->async.queue_lock);

                if (FUNC13(&lynx->async.pcl_queue)) {
                        FUNC21(&lynx->async.queue_lock);
                        FUNC3(KERN_WARNING, lynx->id, "async dma halted, but no queued packet (maybe it was cancelled)");
                } else {
                        struct ti_pcl pcl;
                        u32 ack;
                        struct hpsb_packet *packet;

                        FUNC7(lynx, lynx->async.pcl, &pcl);

                        packet = FUNC6(lynx->async.pcl_queue.next);
                        FUNC12(&packet->driver_list);

                        FUNC14(lynx->dev, lynx->async.header_dma,
                                         packet->header_size, PCI_DMA_TODEVICE);
                        if (packet->data_size) {
                                FUNC14(lynx->dev, lynx->async.data_dma,
                                                 packet->data_size, PCI_DMA_TODEVICE);
                        }

                        if (!FUNC13(&lynx->async.queue)) {
                                FUNC19(lynx, hpsb_async);
                        }

                        FUNC21(&lynx->async.queue_lock);

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
                                ack = ACKX_SEND_ERROR;
                        }
                        FUNC11(host, packet, ack);
                }
        }

        if (intmask & FUNC2(CHANNEL_ISO_SEND)) {
                FUNC4(KERN_DEBUG, lynx->id, "iso sent");
                FUNC20(&lynx->iso_send.queue_lock);

                if (FUNC13(&lynx->iso_send.pcl_queue)) {
                        FUNC21(&lynx->iso_send.queue_lock);
                        FUNC3(KERN_ERR, lynx->id, "iso send dma halted, but no queued packet");
                } else {
                        struct ti_pcl pcl;
                        u32 ack;
                        struct hpsb_packet *packet;

                        FUNC7(lynx, lynx->iso_send.pcl, &pcl);

                        packet = FUNC6(lynx->iso_send.pcl_queue.next);
                        FUNC12(&packet->driver_list);

                        FUNC14(lynx->dev, lynx->iso_send.header_dma,
                                         packet->header_size, PCI_DMA_TODEVICE);
                        if (packet->data_size) {
                                FUNC14(lynx->dev, lynx->iso_send.data_dma,
                                                 packet->data_size, PCI_DMA_TODEVICE);
                        }
#if 0 /* has been removed from ieee1394 core */
                        if (!list_empty(&lynx->iso_send.queue)) {
                                send_next(lynx, hpsb_iso);
                        }
#endif
                        FUNC21(&lynx->iso_send.queue_lock);

                        if (pcl.pcl_status & DMA_CHAN_STAT_PKTCMPL) {
                                if (pcl.pcl_status & DMA_CHAN_STAT_SPECIALACK) {
                                        ack = (pcl.pcl_status >> 15) & 0xf;
                                        FUNC4(KERN_INFO, lynx->id, "special ack %d", ack);
                                        ack = (ack == 1 ? ACKX_TIMEOUT : ACKX_SEND_ERROR);
                                } else {
                                        ack = (pcl.pcl_status >> 15) & 0xf;
                                }
                        } else {
                                FUNC3(KERN_INFO, lynx->id, "iso send packet was not completed");
                                ack = ACKX_SEND_ERROR;
                        }

                        FUNC11(host, packet, ack); //FIXME: maybe we should just use ACK_COMPLETE and ACKX_SEND_ERROR
                }
        }

        if (intmask & FUNC2(CHANNEL_ASYNC_RCV)) {
                /* general receive DMA completed */
                int stat = FUNC15(lynx, FUNC0(CHANNEL_ASYNC_RCV));

                FUNC4(KERN_DEBUG, lynx->id, "received packet size %d",
                       stat & 0x1fff);

                if (stat & DMA_CHAN_STAT_SELFID) {
                        lynx->selfid_size = stat & 0x1fff;
                        FUNC8(lynx, host);
                } else {
                        quadlet_t *q_data = lynx->rcv_page;
                        if ((*q_data >> 4 & 0xf) == TCODE_READQ_RESPONSE
                            || (*q_data >> 4 & 0xf) == TCODE_WRITEQ) {
                                FUNC5(q_data + 3);
                        }
                        FUNC10(host, q_data, stat & 0x1fff, 0);
                }

                FUNC17(lynx, lynx->rcv_pcl_start, CHANNEL_ASYNC_RCV);
        }

	return IRQ_HANDLED;
}