
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpsb_packet {int generation; size_t allocated_data_size; int embedded_data; int data; int refcnt; int queue; int driver_list; int state; } ;


 int GFP_ATOMIC ;
 int INIT_LIST_HEAD (int *) ;
 int atomic_set (int *,int) ;
 int hpsb_unused ;
 struct hpsb_packet* kzalloc (int,int ) ;

struct hpsb_packet *hpsb_alloc_packet(size_t data_size)
{
 struct hpsb_packet *packet;

 data_size = ((data_size + 3) & ~3);

 packet = kzalloc(sizeof(*packet) + data_size, GFP_ATOMIC);
 if (!packet)
  return ((void*)0);

 packet->state = hpsb_unused;
 packet->generation = -1;
 INIT_LIST_HEAD(&packet->driver_list);
 INIT_LIST_HEAD(&packet->queue);
 atomic_set(&packet->refcnt, 1);

 if (data_size) {
  packet->data = packet->embedded_data;
  packet->allocated_data_size = data_size;
 }
 return packet;
}
