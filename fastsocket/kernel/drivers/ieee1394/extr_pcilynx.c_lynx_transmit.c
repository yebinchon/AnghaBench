
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lynx_send_data {int queue_lock; int pcl_queue; int queue; } ;
struct ti_lynx {int id; struct lynx_send_data iso_send; struct lynx_send_data async; } ;
struct hpsb_packet {int data_size; int type; scalar_t__ tcode; int driver_list; int * header; } ;
struct hpsb_host {struct ti_lynx* hostdata; } ;


 int EINVAL ;
 int EOVERFLOW ;
 int KERN_ERR ;
 int PRINT (int ,int ,char*,int) ;
 scalar_t__ TCODE_READQ_RESPONSE ;
 scalar_t__ TCODE_WRITEQ ;
 int cpu_to_be32s (int *) ;



 int list_add_tail (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 int send_next (struct ti_lynx*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int lynx_transmit(struct hpsb_host *host, struct hpsb_packet *packet)
{
        struct ti_lynx *lynx = host->hostdata;
        struct lynx_send_data *d;
        unsigned long flags;

        if (packet->data_size >= 4096) {
                PRINT(KERN_ERR, lynx->id, "transmit packet data too big (%Zd)",
                      packet->data_size);
                return -EOVERFLOW;
        }

        switch (packet->type) {
        case 130:
        case 128:
                d = &lynx->async;
                break;





        default:
                PRINT(KERN_ERR, lynx->id, "invalid packet type %d",
                      packet->type);
                return -EINVAL;
        }

        if (packet->tcode == TCODE_WRITEQ
            || packet->tcode == TCODE_READQ_RESPONSE) {
                cpu_to_be32s(&packet->header[3]);
        }

        spin_lock_irqsave(&d->queue_lock, flags);

 list_add_tail(&packet->driver_list, &d->queue);
 if (list_empty(&d->pcl_queue))
                send_next(lynx, packet->type);

        spin_unlock_irqrestore(&d->queue_lock, flags);

        return 0;
}
