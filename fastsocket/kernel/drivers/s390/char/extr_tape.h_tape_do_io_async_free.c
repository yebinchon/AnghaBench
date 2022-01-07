
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tape_request {int * callback_data; void* callback; } ;
struct tape_device {int dummy; } ;


 int tape_do_io_async (struct tape_device*,struct tape_request*) ;
 scalar_t__ tape_free_request ;

__attribute__((used)) static inline void
tape_do_io_async_free(struct tape_device *device, struct tape_request *request)
{
 request->callback = (void *) tape_free_request;
 request->callback_data = ((void*)0);
 tape_do_io_async(device, request);
}
