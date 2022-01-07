
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpsb_packet {void (* complete_routine ) (void*) ;void* complete_data; } ;


 int WARN_ON (int ) ;

void hpsb_set_packet_complete_task(struct hpsb_packet *packet,
       void (*routine)(void *), void *data)
{
 WARN_ON(packet->complete_routine != ((void*)0));
 packet->complete_routine = routine;
 packet->complete_data = data;
 return;
}
