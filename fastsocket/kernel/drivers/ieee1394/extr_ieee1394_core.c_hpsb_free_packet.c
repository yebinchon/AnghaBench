
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpsb_packet {int queue; int driver_list; int refcnt; } ;


 int BUG_ON (int) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int kfree (struct hpsb_packet*) ;
 int list_empty (int *) ;

void hpsb_free_packet(struct hpsb_packet *packet)
{
 if (packet && atomic_dec_and_test(&packet->refcnt)) {
  BUG_ON(!list_empty(&packet->driver_list) ||
         !list_empty(&packet->queue));
  kfree(packet);
 }
}
