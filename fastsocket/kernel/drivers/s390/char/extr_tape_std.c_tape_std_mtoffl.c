
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tape_request {scalar_t__ cpaddr; int op; } ;
struct tape_device {int * modeset_byte; } ;


 scalar_t__ IS_ERR (struct tape_request*) ;
 int MODE_SET_DB ;
 int NOP ;
 int PTR_ERR (struct tape_request*) ;
 int REWIND_UNLOAD ;
 int TO_RUN ;
 struct tape_request* tape_alloc_request (int,int ) ;
 int tape_ccw_cc (scalar_t__,int ,int,int *) ;
 int tape_ccw_end (scalar_t__,int ,int ,int *) ;
 int tape_do_io_free (struct tape_device*,struct tape_request*) ;

int
tape_std_mtoffl(struct tape_device *device, int mt_count)
{
 struct tape_request *request;

 request = tape_alloc_request(3, 0);
 if (IS_ERR(request))
  return PTR_ERR(request);
 request->op = TO_RUN;

 tape_ccw_cc(request->cpaddr, MODE_SET_DB, 1, device->modeset_byte);
 tape_ccw_cc(request->cpaddr + 1, REWIND_UNLOAD, 0, ((void*)0));
 tape_ccw_end(request->cpaddr + 2, NOP, 0, ((void*)0));


 return tape_do_io_free(device, request);
}
