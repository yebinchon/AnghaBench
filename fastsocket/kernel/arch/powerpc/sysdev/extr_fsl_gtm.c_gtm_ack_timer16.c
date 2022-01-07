
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct gtm_timer {int gtevr; } ;


 int out_be16 (int ,int ) ;

void gtm_ack_timer16(struct gtm_timer *tmr, u16 events)
{
 out_be16(tmr->gtevr, events);
}
