
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int list; } ;


 int __sclp_make_read_req () ;
 int list_add (int *,int *) ;
 TYPE_1__ sclp_read_req ;
 scalar_t__ sclp_reading_state ;
 scalar_t__ sclp_reading_state_idle ;
 scalar_t__ sclp_reading_state_reading ;
 int sclp_req_queue ;

__attribute__((used)) static void
__sclp_queue_read_req(void)
{
 if (sclp_reading_state == sclp_reading_state_idle) {
  sclp_reading_state = sclp_reading_state_reading;
  __sclp_make_read_req();

  list_add(&sclp_read_req.list, &sclp_req_queue);
 }
}
