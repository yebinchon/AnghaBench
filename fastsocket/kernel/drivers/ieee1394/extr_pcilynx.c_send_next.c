
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ti_pcl {TYPE_2__* buffer; scalar_t__ pcl_status; void* async_error_next; void* next; } ;
struct TYPE_3__ {int next; } ;
struct lynx_send_data {int channel; int pcl_start; int pcl; void* data_dma; void* header_dma; int pcl_queue; TYPE_1__ queue; } ;
struct ti_lynx {int dev; int id; struct lynx_send_data async; struct lynx_send_data iso_send; } ;
struct hpsb_packet {int header_size; int data_size; int speed_code; int type; int data; int header; int driver_list; } ;
struct TYPE_4__ {int control; void* pointer; } ;


 int BUG () ;
 int KERN_ERR ;
 int PCI_DMA_TODEVICE ;
 int PCL_BIGENDIAN ;
 int PCL_CMD_UNFXMT ;
 int PCL_CMD_XMT ;
 int PCL_ISOMODE ;
 int PCL_LAST_BUFF ;
 void* PCL_NEXT_INVALID ;
 int PRINT (int ,int ,char*) ;
 struct hpsb_packet* driver_packet (int ) ;



 int list_empty (int *) ;
 int list_move_tail (int *,int *) ;
 void* pci_map_single (int ,int ,int,int ) ;
 int put_pcl (struct ti_lynx*,int ,struct ti_pcl*) ;
 int run_pcl (struct ti_lynx*,int ,int ) ;

__attribute__((used)) static void send_next(struct ti_lynx *lynx, int what)
{
        struct ti_pcl pcl;
        struct lynx_send_data *d;
        struct hpsb_packet *packet;




 d = &lynx->async;

        if (!list_empty(&d->pcl_queue)) {
                PRINT(KERN_ERR, lynx->id, "trying to queue a new packet in nonempty fifo");
                BUG();
        }

        packet = driver_packet(d->queue.next);
 list_move_tail(&packet->driver_list, &d->pcl_queue);

        d->header_dma = pci_map_single(lynx->dev, packet->header,
                                       packet->header_size, PCI_DMA_TODEVICE);
        if (packet->data_size) {
                d->data_dma = pci_map_single(lynx->dev, packet->data,
                                             packet->data_size,
                                             PCI_DMA_TODEVICE);
        } else {
                d->data_dma = 0;
        }

        pcl.next = PCL_NEXT_INVALID;
        pcl.async_error_next = PCL_NEXT_INVALID;
        pcl.pcl_status = 0;
        pcl.buffer[0].control = packet->speed_code << 14 | packet->header_size;

        pcl.buffer[0].control |= PCL_BIGENDIAN;

        pcl.buffer[0].pointer = d->header_dma;
        pcl.buffer[1].control = PCL_LAST_BUFF | packet->data_size;
        pcl.buffer[1].pointer = d->data_dma;

        switch (packet->type) {
        case 130:
                pcl.buffer[0].control |= PCL_CMD_XMT;
                break;





        case 128:
                pcl.buffer[0].control |= PCL_CMD_UNFXMT;
                break;
        }

        put_pcl(lynx, d->pcl, &pcl);
        run_pcl(lynx, d->pcl_start, d->channel);
}
