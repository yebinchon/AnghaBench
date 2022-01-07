
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tape_request {scalar_t__ cpaddr; int op; } ;
struct TYPE_2__ {int idal_buf; } ;
struct tape_device {TYPE_1__ char_data; int modeset_byte; } ;


 int DBF_EVENT (int,char*) ;
 int DBF_EXCEPTION (int,char*) ;
 scalar_t__ IS_ERR (struct tape_request*) ;
 int MODE_SET_DB ;
 int READ_FORWARD ;
 int TO_RFO ;
 struct tape_request* tape_alloc_request (int,int ) ;
 int tape_ccw_cc (scalar_t__,int ,int,int ) ;
 int tape_ccw_end_idal (scalar_t__,int ,int ) ;

struct tape_request *
tape_std_read_block(struct tape_device *device, size_t count)
{
 struct tape_request *request;





 request = tape_alloc_request(4, 0);
 if (IS_ERR(request)) {
  DBF_EXCEPTION(6, "xrbl fail");
  return request;
 }
 request->op = TO_RFO;
 tape_ccw_cc(request->cpaddr, MODE_SET_DB, 1, device->modeset_byte);
 tape_ccw_end_idal(request->cpaddr + 1, READ_FORWARD,
     device->char_data.idal_buf);
 DBF_EVENT(6, "xrbl ccwg\n");
 return request;
}
