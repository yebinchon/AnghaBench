
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tape_request {int cpdata; int cpaddr; int op; } ;
struct tape_device {int dummy; } ;
struct tape_3590_rdc_data {int dummy; } ;


 int CCW_CMD_RDC ;
 scalar_t__ IS_ERR (struct tape_request*) ;
 int PTR_ERR (struct tape_request*) ;
 int TO_RDC ;
 int memcpy (struct tape_3590_rdc_data*,int ,int) ;
 struct tape_request* tape_alloc_request (int,int) ;
 int tape_ccw_end (int ,int ,int,int ) ;
 int tape_do_io (struct tape_device*,struct tape_request*) ;
 int tape_free_request (struct tape_request*) ;

__attribute__((used)) static int tape_3590_read_dev_chars(struct tape_device *device,
        struct tape_3590_rdc_data *rdc_data)
{
 int rc;
 struct tape_request *request;

 request = tape_alloc_request(1, sizeof(*rdc_data));
 if (IS_ERR(request))
  return PTR_ERR(request);
 request->op = TO_RDC;
 tape_ccw_end(request->cpaddr, CCW_CMD_RDC, sizeof(*rdc_data),
       request->cpdata);
 rc = tape_do_io(device, request);
 if (rc == 0)
  memcpy(rdc_data, request->cpdata, sizeof(*rdc_data));
 tape_free_request(request);
 return rc;
}
