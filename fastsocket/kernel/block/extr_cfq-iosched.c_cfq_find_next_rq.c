
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rb_node {int dummy; } ;
struct request {struct rb_node rb_node; } ;
struct cfq_queue {int sort_list; } ;
struct cfq_data {int dummy; } ;


 int BUG_ON (int ) ;
 int RB_EMPTY_NODE (struct rb_node*) ;
 int blk_rq_pos (struct request*) ;
 struct request* cfq_choose_req (struct cfq_data*,struct request*,struct request*,int ) ;
 struct request* rb_entry_rq (struct rb_node*) ;
 struct rb_node* rb_first (int *) ;
 struct rb_node* rb_next (struct rb_node*) ;
 struct rb_node* rb_prev (struct rb_node*) ;

__attribute__((used)) static struct request *
cfq_find_next_rq(struct cfq_data *cfqd, struct cfq_queue *cfqq,
    struct request *last)
{
 struct rb_node *rbnext = rb_next(&last->rb_node);
 struct rb_node *rbprev = rb_prev(&last->rb_node);
 struct request *next = ((void*)0), *prev = ((void*)0);

 BUG_ON(RB_EMPTY_NODE(&last->rb_node));

 if (rbprev)
  prev = rb_entry_rq(rbprev);

 if (rbnext)
  next = rb_entry_rq(rbnext);
 else {
  rbnext = rb_first(&cfqq->sort_list);
  if (rbnext && rbnext != &last->rb_node)
   next = rb_entry_rq(rbnext);
 }

 return cfq_choose_req(cfqd, next, prev, blk_rq_pos(last));
}
