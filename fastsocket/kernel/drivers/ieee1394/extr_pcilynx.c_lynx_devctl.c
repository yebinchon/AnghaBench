
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u32 ;
struct ti_pcl {int pcl_status; } ;
struct TYPE_9__ {int lock; int chan_count; } ;
struct TYPE_11__ {int next; } ;
struct TYPE_8__ {int queue_lock; int data_dma; int header_dma; TYPE_4__ pcl_queue; int pcl; int queue; } ;
struct TYPE_10__ {int reg_1394a; } ;
struct ti_lynx {int selfid_size; int phy_reg0; int id; TYPE_2__ iso_rcv; TYPE_1__ async; int dev; TYPE_3__ phyic; } ;
struct hpsb_packet {int driver_list; int data_size; int header_size; } ;
struct hpsb_host {struct ti_lynx* hostdata; } ;
typedef enum devctl_cmd { ____Placeholder_devctl_cmd } devctl_cmd ;


 int ACKX_ABORTED ;
 int ACKX_SEND_ERROR ;
 int ACKX_TIMEOUT ;


 int CHANNEL_ASYNC_SEND ;
 int CHANNEL_ISO_RCV ;
 int CYCLE_TIMER ;
 int DMA_CHAN_CTRL (int ) ;
 int DMA_CHAN_STAT_PKTCMPL ;
 int DMA_CHAN_STAT_SPECIALACK ;
 int DMA_WORD1_CMP_ENABLE (int ) ;
 int DMA_WORD1_CMP_ENABLE_MASTER ;



 int KERN_DEBUG ;
 int KERN_ERR ;
 int KERN_INFO ;
 int LINK_CONTROL ;
 int LINK_CONTROL_CYCMASTER ;
 int LINK_ID ;
 int LINK_INT_PHY_BUSRESET ;
 int LINK_INT_STATUS ;
 int LIST_HEAD (TYPE_4__) ;



 int PCI_DMA_TODEVICE ;
 int PRINT (int ,int ,char*,...) ;
 int PRINTD (int ,int ,char*,...) ;






 struct hpsb_packet* driver_packet (int ) ;
 int get_pcl (struct ti_lynx*,int ,struct ti_pcl*) ;
 int get_phy_reg (struct ti_lynx*,int) ;
 int hpsb_packet_sent (struct hpsb_host*,struct hpsb_packet*,int) ;
 int list_del_init (int *) ;
 int list_empty (TYPE_4__*) ;
 int list_splice_init (int *,TYPE_4__*) ;
 TYPE_4__ packet_list ;
 int pci_unmap_single (int ,int ,int ,int ) ;
 int reg_clear_bits (struct ti_lynx*,int ,int ) ;
 int reg_read (struct ti_lynx*,int ) ;
 int reg_set_bits (struct ti_lynx*,int ,int ) ;
 int reg_write (struct ti_lynx*,int ,int) ;
 int set_phy_reg (struct ti_lynx*,int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int lynx_devctl(struct hpsb_host *host, enum devctl_cmd cmd, int arg)
{
        struct ti_lynx *lynx = host->hostdata;
        int retval = 0;
        struct hpsb_packet *packet;
 LIST_HEAD(packet_list);
        unsigned long flags;
 int phy_reg;

        switch (cmd) {
        case 133:
                if (reg_read(lynx, LINK_INT_STATUS) & LINK_INT_PHY_BUSRESET) {
                        retval = 0;
                        break;
                }

  switch (arg) {
  case 130:
   if (lynx->phyic.reg_1394a) {
    phy_reg = get_phy_reg(lynx, 5);
    if (phy_reg == -1) {
     PRINT(KERN_ERR, lynx->id, "cannot reset bus, because read phy reg failed");
     retval = -1;
     break;
    }
    phy_reg |= 0x40;

    PRINT(KERN_INFO, lynx->id, "resetting bus (short bus reset) on request");

    lynx->selfid_size = -1;
    lynx->phy_reg0 = -1;
    set_phy_reg(lynx, 5, phy_reg);
    break;
   } else {
    PRINT(KERN_INFO, lynx->id, "cannot do short bus reset, because of old phy");

   }
  case 136:
   phy_reg = get_phy_reg(lynx, 1);
   if (phy_reg == -1) {
    PRINT(KERN_ERR, lynx->id, "cannot reset bus, because read phy reg failed");
    retval = -1;
    break;
   }
   phy_reg |= 0x40;

   PRINT(KERN_INFO, lynx->id, "resetting bus (long bus reset) on request");

   lynx->selfid_size = -1;
   lynx->phy_reg0 = -1;
   set_phy_reg(lynx, 1, phy_reg);
   break;
  case 128:
   if (lynx->phyic.reg_1394a) {
    phy_reg = get_phy_reg(lynx, 1);
    if (phy_reg == -1) {
     PRINT(KERN_ERR, lynx->id, "cannot reset bus, because read phy reg failed");
     retval = -1;
     break;
    }
    if (phy_reg & 0x80) {
     phy_reg &= ~0x80;
     set_phy_reg(lynx, 1, phy_reg);
    }

    phy_reg = get_phy_reg(lynx, 5);
    if (phy_reg == -1) {
     PRINT(KERN_ERR, lynx->id, "cannot reset bus, because read phy reg failed");
     retval = -1;
     break;
    }
    phy_reg |= 0x40;

    PRINT(KERN_INFO, lynx->id, "resetting bus (short bus reset, no force_root) on request");

    lynx->selfid_size = -1;
    lynx->phy_reg0 = -1;
    set_phy_reg(lynx, 5, phy_reg);
    break;
   } else {
    PRINT(KERN_INFO, lynx->id, "cannot do short bus reset, because of old phy");

   }
  case 134:
   phy_reg = get_phy_reg(lynx, 1);
   if (phy_reg == -1) {
    PRINT(KERN_ERR, lynx->id, "cannot reset bus, because read phy reg failed");
    retval = -1;
    break;
   }
   phy_reg &= ~0x80;
   phy_reg |= 0x40;

   PRINT(KERN_INFO, lynx->id, "resetting bus (long bus reset, no force_root) on request");

   lynx->selfid_size = -1;
   lynx->phy_reg0 = -1;
   set_phy_reg(lynx, 1, phy_reg);
   break;
  case 129:
   if (lynx->phyic.reg_1394a) {
    phy_reg = get_phy_reg(lynx, 1);
    if (phy_reg == -1) {
     PRINT(KERN_ERR, lynx->id, "cannot reset bus, because read phy reg failed");
     retval = -1;
     break;
    }
    if (!(phy_reg & 0x80)) {
     phy_reg |= 0x80;
     set_phy_reg(lynx, 1, phy_reg);
    }

    phy_reg = get_phy_reg(lynx, 5);
    if (phy_reg == -1) {
     PRINT(KERN_ERR, lynx->id, "cannot reset bus, because read phy reg failed");
     retval = -1;
     break;
    }
    phy_reg |= 0x40;

    PRINT(KERN_INFO, lynx->id, "resetting bus (short bus reset, force_root set) on request");

    lynx->selfid_size = -1;
    lynx->phy_reg0 = -1;
    set_phy_reg(lynx, 5, phy_reg);
    break;
   } else {
    PRINT(KERN_INFO, lynx->id, "cannot do short bus reset, because of old phy");

   }
  case 135:
   phy_reg = get_phy_reg(lynx, 1);
   if (phy_reg == -1) {
    PRINT(KERN_ERR, lynx->id, "cannot reset bus, because read phy reg failed");
    retval = -1;
    break;
   }
   phy_reg |= 0xc0;

   PRINT(KERN_INFO, lynx->id, "resetting bus (long bus reset, force_root set) on request");

   lynx->selfid_size = -1;
   lynx->phy_reg0 = -1;
   set_phy_reg(lynx, 1, phy_reg);
   break;
  default:
   PRINT(KERN_ERR, lynx->id, "unknown argument for reset_bus command %d", arg);
   retval = -1;
  }

                break;

        case 139:
                retval = reg_read(lynx, CYCLE_TIMER);
                break;

        case 131:
                reg_write(lynx, CYCLE_TIMER, arg);
                break;

        case 132:
                reg_write(lynx, LINK_ID,
                          (arg << 22) | (reg_read(lynx, LINK_ID) & 0x003f0000));
                break;

        case 141:
                if (arg) {
                        reg_set_bits(lynx, LINK_CONTROL,
                                     LINK_CONTROL_CYCMASTER);
                } else {
                        reg_clear_bits(lynx, LINK_CONTROL,
                                       LINK_CONTROL_CYCMASTER);
                }
                break;

        case 140:
                spin_lock_irqsave(&lynx->async.queue_lock, flags);

                reg_write(lynx, DMA_CHAN_CTRL(CHANNEL_ASYNC_SEND), 0);
  list_splice_init(&lynx->async.queue, &packet_list);

                if (list_empty(&lynx->async.pcl_queue)) {
                        spin_unlock_irqrestore(&lynx->async.queue_lock, flags);
                        PRINTD(KERN_DEBUG, lynx->id, "no async packet in PCL to cancel");
                } else {
                        struct ti_pcl pcl;
                        u32 ack;

                        PRINT(KERN_INFO, lynx->id, "cancelling async packet, that was already in PCL");

                        get_pcl(lynx, lynx->async.pcl, &pcl);

                        packet = driver_packet(lynx->async.pcl_queue.next);
   list_del_init(&packet->driver_list);

                        pci_unmap_single(lynx->dev, lynx->async.header_dma,
                                         packet->header_size, PCI_DMA_TODEVICE);
                        if (packet->data_size) {
                                pci_unmap_single(lynx->dev, lynx->async.data_dma,
                                                 packet->data_size, PCI_DMA_TODEVICE);
                        }

                        spin_unlock_irqrestore(&lynx->async.queue_lock, flags);

                        if (pcl.pcl_status & DMA_CHAN_STAT_PKTCMPL) {
                                if (pcl.pcl_status & DMA_CHAN_STAT_SPECIALACK) {
                                        ack = (pcl.pcl_status >> 15) & 0xf;
                                        PRINTD(KERN_INFO, lynx->id, "special ack %d", ack);
                                        ack = (ack == 1 ? ACKX_TIMEOUT : ACKX_SEND_ERROR);
                                } else {
                                        ack = (pcl.pcl_status >> 15) & 0xf;
                                }
                        } else {
                                PRINT(KERN_INFO, lynx->id, "async packet was not completed");
                                ack = ACKX_ABORTED;
                        }
                        hpsb_packet_sent(host, packet, ack);
                }

  while (!list_empty(&packet_list)) {
   packet = driver_packet(packet_list.next);
   list_del_init(&packet->driver_list);
   hpsb_packet_sent(host, packet, ACKX_ABORTED);
  }

                break;
        default:
                PRINT(KERN_ERR, lynx->id, "unknown devctl command %d", cmd);
                retval = -1;
        }

        return retval;
}
