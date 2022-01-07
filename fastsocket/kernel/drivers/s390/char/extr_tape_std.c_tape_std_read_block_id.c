
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tape_request {scalar_t__ cpdata; scalar_t__ cpaddr; int op; } ;
struct tape_device {scalar_t__ modeset_byte; } ;
typedef int __u64 ;


 scalar_t__ IS_ERR (struct tape_request*) ;
 int MODE_SET_DB ;
 int NOP ;
 int PTR_ERR (struct tape_request*) ;
 int READ_BLOCK_ID ;
 int TO_RBI ;
 struct tape_request* tape_alloc_request (int,int) ;
 int tape_ccw_cc (scalar_t__,int ,int,scalar_t__) ;
 int tape_ccw_end (scalar_t__,int ,int ,int *) ;
 int tape_do_io (struct tape_device*,struct tape_request*) ;
 int tape_free_request (struct tape_request*) ;

int
tape_std_read_block_id(struct tape_device *device, __u64 *id)
{
 struct tape_request *request;
 int rc;

 request = tape_alloc_request(3, 8);
 if (IS_ERR(request))
  return PTR_ERR(request);
 request->op = TO_RBI;

 tape_ccw_cc(request->cpaddr, MODE_SET_DB, 1, device->modeset_byte);
 tape_ccw_cc(request->cpaddr + 1, READ_BLOCK_ID, 8, request->cpdata);
 tape_ccw_end(request->cpaddr + 2, NOP, 0, ((void*)0));

 rc = tape_do_io(device, request);
 if (rc == 0)

  *id = *(__u64 *) request->cpdata;
 tape_free_request(request);
 return rc;
}
