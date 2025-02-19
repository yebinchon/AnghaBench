
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rb_node {int dummy; } ;
struct request {struct rb_node rb_node; } ;
struct as_data {int * sort_list; } ;


 int BUG_ON (int ) ;
 int RB_EMPTY_NODE (struct rb_node*) ;
 struct request* as_choose_req (struct as_data*,struct request*,struct request*) ;
 struct request* rb_entry_rq (struct rb_node*) ;
 struct rb_node* rb_first (int *) ;
 struct rb_node* rb_next (struct rb_node*) ;
 struct rb_node* rb_prev (struct rb_node*) ;
 int rq_is_sync (struct request*) ;

__attribute__((used)) static struct request *
as_find_next_rq(struct as_data *ad, struct request *last)
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
  const int data_dir = rq_is_sync(last);

  rbnext = rb_first(&ad->sort_list[data_dir]);
  if (rbnext && rbnext != &last->rb_node)
   next = rb_entry_rq(rbnext);
 }

 return as_choose_req(ad, next, prev);
}
