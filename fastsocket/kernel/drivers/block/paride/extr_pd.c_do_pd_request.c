
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;


 scalar_t__ blk_fetch_request (struct request_queue*) ;
 scalar_t__ pd_req ;
 int schedule_fsm () ;

__attribute__((used)) static void do_pd_request(struct request_queue * q)
{
 if (pd_req)
  return;
 pd_req = blk_fetch_request(q);
 if (!pd_req)
  return;

 schedule_fsm();
}
