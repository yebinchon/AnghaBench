
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpsb_packet {int dummy; } ;
struct completion {int dummy; } ;


 int complete_packet ;
 int hpsb_send_packet (struct hpsb_packet*) ;
 int hpsb_set_packet_complete_task (struct hpsb_packet*,int ,struct completion*) ;
 int init_completion (struct completion*) ;
 int wait_for_completion (struct completion*) ;

int hpsb_send_packet_and_wait(struct hpsb_packet *packet)
{
 struct completion done;
 int retval;

 init_completion(&done);
 hpsb_set_packet_complete_task(packet, complete_packet, &done);
 retval = hpsb_send_packet(packet);
 if (retval == 0)
  wait_for_completion(&done);

 return retval;
}
