
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tape_request {scalar_t__ cpaddr; int op; } ;
struct tape_device {int * modeset_byte; } ;


 int DATA_SEC_ERASE ;
 int ERASE_GAP ;
 scalar_t__ IS_ERR (struct tape_request*) ;
 int MODE_SET_DB ;
 int NOP ;
 int PTR_ERR (struct tape_request*) ;
 int REWIND ;
 int TO_DSE ;
 struct tape_request* tape_alloc_request (int,int ) ;
 int tape_ccw_cc (scalar_t__,int ,int,int *) ;
 int tape_ccw_end (scalar_t__,int ,int ,int *) ;
 int tape_do_io_free (struct tape_device*,struct tape_request*) ;

int
tape_std_mterase(struct tape_device *device, int mt_count)
{
 struct tape_request *request;

 request = tape_alloc_request(6, 0);
 if (IS_ERR(request))
  return PTR_ERR(request);
 request->op = TO_DSE;

 tape_ccw_cc(request->cpaddr, MODE_SET_DB, 1, device->modeset_byte);
 tape_ccw_cc(request->cpaddr + 1, REWIND, 0, ((void*)0));
 tape_ccw_cc(request->cpaddr + 2, ERASE_GAP, 0, ((void*)0));
 tape_ccw_cc(request->cpaddr + 3, DATA_SEC_ERASE, 0, ((void*)0));
 tape_ccw_cc(request->cpaddr + 4, REWIND, 0, ((void*)0));
 tape_ccw_end(request->cpaddr + 5, NOP, 0, ((void*)0));


 return tape_do_io_free(device, request);
}
