
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int rb_node; } ;
struct rb_node {int dummy; } ;


 struct request* rb_entry_rq (struct rb_node*) ;
 struct rb_node* rb_next (int *) ;

__attribute__((used)) static inline struct request *
deadline_latter_request(struct request *rq)
{
 struct rb_node *node = rb_next(&rq->rb_node);

 if (node)
  return rb_entry_rq(node);

 return ((void*)0);
}
