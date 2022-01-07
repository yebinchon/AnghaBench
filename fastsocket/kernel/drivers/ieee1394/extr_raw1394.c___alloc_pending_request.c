
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pending_request {int list; } ;
typedef int gfp_t ;


 int INIT_LIST_HEAD (int *) ;
 struct pending_request* kzalloc (int,int ) ;

__attribute__((used)) static struct pending_request *__alloc_pending_request(gfp_t flags)
{
 struct pending_request *req;

 req = kzalloc(sizeof(*req), flags);
 if (req)
  INIT_LIST_HEAD(&req->list);

 return req;
}
