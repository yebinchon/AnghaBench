
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; int cda; } ;
struct raw3270_request {size_t size; TYPE_1__ ccw; int buffer; int list; } ;


 int CCW_FLAG_SLI ;
 int ENOMEM ;
 struct raw3270_request* ERR_PTR (int ) ;
 int GFP_DMA ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int __pa (int ) ;
 int kfree (struct raw3270_request*) ;
 int kmalloc (size_t,int) ;
 struct raw3270_request* kzalloc (int,int) ;

struct raw3270_request *
raw3270_request_alloc(size_t size)
{
 struct raw3270_request *rq;


 rq = kzalloc(sizeof(struct raw3270_request), GFP_KERNEL | GFP_DMA);
 if (!rq)
  return ERR_PTR(-ENOMEM);


 if (size > 0) {
  rq->buffer = kmalloc(size, GFP_KERNEL | GFP_DMA);
  if (!rq->buffer) {
   kfree(rq);
   return ERR_PTR(-ENOMEM);
  }
 }
 rq->size = size;
 INIT_LIST_HEAD(&rq->list);




 rq->ccw.cda = __pa(rq->buffer);
 rq->ccw.flags = CCW_FLAG_SLI;

 return rq;
}
