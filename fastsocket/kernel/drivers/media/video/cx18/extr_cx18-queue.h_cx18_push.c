
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx18_stream {int dummy; } ;
struct cx18_queue {int dummy; } ;
struct cx18_mdl {int dummy; } ;


 struct cx18_queue* _cx18_enqueue (struct cx18_stream*,struct cx18_mdl*,struct cx18_queue*,int) ;

__attribute__((used)) static inline
struct cx18_queue *cx18_push(struct cx18_stream *s, struct cx18_mdl *mdl,
        struct cx18_queue *q)
{
 return _cx18_enqueue(s, mdl, q, 1);
}
