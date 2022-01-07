
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpsb_packet {int dummy; } ;


 int hpsb_get_tlabel_atomic (struct hpsb_packet*) ;
 scalar_t__ in_atomic () ;
 scalar_t__ irqs_disabled () ;
 int tlabel_wq ;
 int wait_event_interruptible (int ,int) ;

int hpsb_get_tlabel(struct hpsb_packet *packet)
{
 if (irqs_disabled() || in_atomic())
  return hpsb_get_tlabel_atomic(packet);






 return wait_event_interruptible(tlabel_wq,
     !hpsb_get_tlabel_atomic(packet));
}
