
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_context {scalar_t__ aic; } ;


 int GFP_ATOMIC ;
 scalar_t__ alloc_as_io_context () ;
 struct io_context* get_io_context (int ,int) ;
 int put_io_context (struct io_context*) ;

__attribute__((used)) static struct io_context *as_get_io_context(int node)
{
 struct io_context *ioc = get_io_context(GFP_ATOMIC, node);
 if (ioc && !ioc->aic) {
  ioc->aic = alloc_as_io_context();
  if (!ioc->aic) {
   put_io_context(ioc);
   ioc = ((void*)0);
  }
 }
 return ioc;
}
