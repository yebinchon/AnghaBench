
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty3270 {int readlet; } ;
struct raw3270_request {scalar_t__ view; } ;


 int raw3270_get_view (scalar_t__) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static void
tty3270_read_callback(struct raw3270_request *rq, void *data)
{
 raw3270_get_view(rq->view);

 tasklet_schedule(&((struct tty3270 *) rq->view)->readlet);
}
