
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct throtl_data {int throtl_work; } ;
struct request_queue {struct throtl_data* td; } ;


 int cancel_delayed_work_sync (int *) ;

__attribute__((used)) static void throtl_shutdown_wq(struct request_queue *q)
{
 struct throtl_data *td = q->td;

 cancel_delayed_work_sync(&td->throtl_work);
}
