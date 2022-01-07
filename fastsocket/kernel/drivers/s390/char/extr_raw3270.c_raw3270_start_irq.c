
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raw3270_view {struct raw3270* dev; } ;
struct raw3270_request {int list; struct raw3270_view* view; } ;
struct raw3270 {int req_queue; } ;


 int list_add_tail (int *,int *) ;
 int raw3270_get_view (struct raw3270_view*) ;

int
raw3270_start_irq(struct raw3270_view *view, struct raw3270_request *rq)
{
 struct raw3270 *rp;

 rp = view->dev;
 rq->view = view;
 raw3270_get_view(view);
 list_add_tail(&rq->list, &rp->req_queue);
 return 0;
}
