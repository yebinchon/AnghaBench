
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raw3270_request {struct raw3270_request* buffer; } ;


 int kfree (struct raw3270_request*) ;

void
raw3270_request_free (struct raw3270_request *rq)
{
 kfree(rq->buffer);
 kfree(rq);
}
