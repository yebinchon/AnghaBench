
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pktcdvd_device {int dummy; } ;
struct packet_data {int state; TYPE_1__* w_bio; int io_wait; int io_errors; int sleep_time; int frames; int write_size; int id; } ;
struct TYPE_2__ {int bi_flags; } ;


 int BIO_UPTODATE ;
 int BUG () ;





 int VPRINTK (char*,...) ;
 int atomic_read (int *) ;
 int pkt_finish_packet (struct packet_data*,int) ;
 int pkt_gather_data (struct pktcdvd_device*,struct packet_data*) ;
 int pkt_set_state (struct packet_data*,int) ;
 int pkt_start_recovery (struct packet_data*) ;
 int pkt_start_write (struct pktcdvd_device*,struct packet_data*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void pkt_run_state_machine(struct pktcdvd_device *pd, struct packet_data *pkt)
{
 int uptodate;

 VPRINTK("run_state_machine: pkt %d\n", pkt->id);

 for (;;) {
  switch (pkt->state) {
  case 129:
   if ((pkt->write_size < pkt->frames) && (pkt->sleep_time > 0))
    return;

   pkt->sleep_time = 0;
   pkt_gather_data(pd, pkt);
   pkt_set_state(pkt, 131);
   break;

  case 131:
   if (atomic_read(&pkt->io_wait) > 0)
    return;

   if (atomic_read(&pkt->io_errors) > 0) {
    pkt_set_state(pkt, 130);
   } else {
    pkt_start_write(pd, pkt);
   }
   break;

  case 128:
   if (atomic_read(&pkt->io_wait) > 0)
    return;

   if (test_bit(BIO_UPTODATE, &pkt->w_bio->bi_flags)) {
    pkt_set_state(pkt, 132);
   } else {
    pkt_set_state(pkt, 130);
   }
   break;

  case 130:
   if (pkt_start_recovery(pkt)) {
    pkt_start_write(pd, pkt);
   } else {
    VPRINTK("No recovery possible\n");
    pkt_set_state(pkt, 132);
   }
   break;

  case 132:
   uptodate = test_bit(BIO_UPTODATE, &pkt->w_bio->bi_flags);
   pkt_finish_packet(pkt, uptodate);
   return;

  default:
   BUG();
   break;
  }
 }
}
