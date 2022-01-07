
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int depth; } ;
struct cx18_queue {int depth; } ;
struct cx18_stream {TYPE_1__ q_free; struct cx18_queue q_busy; } ;
struct cx18_mdl {int dummy; } ;


 scalar_t__ CX18_MAX_FW_MDLS_PER_STREAM ;
 struct cx18_queue* _cx18_stream_put_mdl_fw (struct cx18_stream*,struct cx18_mdl*) ;
 scalar_t__ atomic_read (int *) ;
 struct cx18_mdl* cx18_dequeue (struct cx18_stream*,TYPE_1__*) ;

__attribute__((used)) static
void _cx18_stream_load_fw_queue(struct cx18_stream *s)
{
 struct cx18_queue *q;
 struct cx18_mdl *mdl;

 if (atomic_read(&s->q_free.depth) == 0 ||
     atomic_read(&s->q_busy.depth) >= CX18_MAX_FW_MDLS_PER_STREAM)
  return;


 do {
  mdl = cx18_dequeue(s, &s->q_free);
  if (mdl == ((void*)0))
   break;
  q = _cx18_stream_put_mdl_fw(s, mdl);
 } while (atomic_read(&s->q_busy.depth) < CX18_MAX_FW_MDLS_PER_STREAM
   && q == &s->q_busy);
}
