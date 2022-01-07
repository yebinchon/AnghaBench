
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_list {int * starved; int elvpriv; int * count; } ;
struct request_queue {struct request_list rq; } ;


 unsigned int REQ_ELVPRIV ;
 int __freed_request (struct request_queue*,int) ;
 int rw_is_sync (unsigned int) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void freed_request(struct request_queue *q, unsigned int flags)
{
 struct request_list *rl = &q->rq;
 int sync = rw_is_sync(flags);

 rl->count[sync]--;
 if (flags & REQ_ELVPRIV)
  rl->elvpriv--;

 __freed_request(q, sync);

 if (unlikely(rl->starved[sync ^ 1]))
  __freed_request(q, sync ^ 1);
}
