
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tape_request {struct tape_request* cpaddr; struct tape_request* cpdata; int * device; } ;


 int DBF_LH (int,char*,struct tape_request*) ;
 int kfree (struct tape_request*) ;
 int * tape_put_device (int *) ;

void
tape_free_request (struct tape_request * request)
{
 DBF_LH(6, "Free request %p\n", request);

 if (request->device != ((void*)0)) {
  request->device = tape_put_device(request->device);
 }
 kfree(request->cpdata);
 kfree(request->cpaddr);
 kfree(request);
}
