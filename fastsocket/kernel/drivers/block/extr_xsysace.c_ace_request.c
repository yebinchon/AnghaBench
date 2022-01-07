
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {int dummy; } ;
struct request {TYPE_1__* rq_disk; } ;
struct ace_device {int fsm_tasklet; } ;
struct TYPE_2__ {struct ace_device* private_data; } ;


 struct request* ace_get_next_request (struct request_queue*) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static void ace_request(struct request_queue * q)
{
 struct request *req;
 struct ace_device *ace;

 req = ace_get_next_request(q);

 if (req) {
  ace = req->rq_disk->private_data;
  tasklet_schedule(&ace->fsm_tasklet);
 }
}
