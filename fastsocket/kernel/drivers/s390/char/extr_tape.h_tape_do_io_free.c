
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tape_request {int dummy; } ;
struct tape_device {int dummy; } ;


 int tape_do_io (struct tape_device*,struct tape_request*) ;
 int tape_free_request (struct tape_request*) ;

__attribute__((used)) static inline int
tape_do_io_free(struct tape_device *device, struct tape_request *request)
{
 int rc;

 rc = tape_do_io(device, request);
 tape_free_request(request);
 return rc;
}
