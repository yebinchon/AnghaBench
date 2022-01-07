
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int lv1_send_event_locally (int ) ;
 int virq_to_hw (unsigned int) ;

int ps3_send_event_locally(unsigned int virq)
{
 return lv1_send_event_locally(virq_to_hw(virq));
}
