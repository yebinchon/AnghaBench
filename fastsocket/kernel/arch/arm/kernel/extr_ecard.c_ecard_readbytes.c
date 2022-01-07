
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecard_request {int address; int length; int use_loader; void* buffer; int * ec; int fn; } ;
typedef int ecard_t ;


 int ecard_call (struct ecard_request*) ;
 int ecard_task_readbytes ;

__attribute__((used)) static void
ecard_readbytes(void *addr, ecard_t *ec, int off, int len, int useld)
{
 struct ecard_request req;

 req.fn = ecard_task_readbytes;
 req.ec = ec;
 req.address = off;
 req.length = len;
 req.use_loader = useld;
 req.buffer = addr;

 ecard_call(&req);
}
