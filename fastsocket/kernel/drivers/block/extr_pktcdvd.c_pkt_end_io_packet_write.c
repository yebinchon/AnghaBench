
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pkt_ended; } ;
struct pktcdvd_device {int wqueue; TYPE_1__ stats; } ;
struct packet_data {int run_sm; int io_wait; int id; struct pktcdvd_device* pd; } ;
struct bio {struct packet_data* bi_private; } ;


 int BUG_ON (int) ;
 int VPRINTK (char*,int ,int) ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 int pkt_bio_finished (struct pktcdvd_device*) ;
 int wake_up (int *) ;

__attribute__((used)) static void pkt_end_io_packet_write(struct bio *bio, int err)
{
 struct packet_data *pkt = bio->bi_private;
 struct pktcdvd_device *pd = pkt->pd;
 BUG_ON(!pd);

 VPRINTK("pkt_end_io_packet_write: id=%d, err=%d\n", pkt->id, err);

 pd->stats.pkt_ended++;

 pkt_bio_finished(pd);
 atomic_dec(&pkt->io_wait);
 atomic_inc(&pkt->run_sm);
 wake_up(&pd->wqueue);
}
