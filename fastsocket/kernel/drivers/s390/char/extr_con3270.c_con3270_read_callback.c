
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raw3270_request {scalar_t__ view; } ;
struct con3270 {int readlet; } ;


 int raw3270_get_view (scalar_t__) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static void
con3270_read_callback(struct raw3270_request *rq, void *data)
{
 raw3270_get_view(rq->view);

 tasklet_schedule(&((struct con3270 *) rq->view)->readlet);
}
