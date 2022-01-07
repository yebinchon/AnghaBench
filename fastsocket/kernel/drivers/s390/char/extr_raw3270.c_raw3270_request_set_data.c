
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t count; int cda; } ;
struct raw3270_request {TYPE_1__ ccw; } ;


 int __pa (void*) ;

void
raw3270_request_set_data(struct raw3270_request *rq, void *data, size_t size)
{
 rq->ccw.cda = __pa(data);
 rq->ccw.count = size;
}
