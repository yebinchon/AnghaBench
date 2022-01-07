
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tape_request {scalar_t__ cpaddr; scalar_t__ cpdata; int op; } ;
struct tape_device {int dummy; } ;
struct display_struct {unsigned char cntrl; int message2; int message1; } ;


 int ASCEBC (unsigned char*,int) ;
 int DBF_EVENT (int,char*,...) ;
 scalar_t__ IS_ERR (struct tape_request*) ;
 int LOAD_DISPLAY ;
 int NOP ;
 int PTR_ERR (struct tape_request*) ;
 int TO_DIS ;
 int memcpy (unsigned char*,int ,int) ;
 struct tape_request* tape_alloc_request (int,int) ;
 int tape_ccw_cc (scalar_t__,int ,int,scalar_t__) ;
 int tape_ccw_end (scalar_t__,int ,int ,int *) ;
 int tape_do_io_interruptible (struct tape_device*,struct tape_request*) ;
 int tape_free_request (struct tape_request*) ;

int
tape_std_display(struct tape_device *device, struct display_struct *disp)
{
 struct tape_request *request;
 int rc;

 request = tape_alloc_request(2, 17);
 if (IS_ERR(request)) {
  DBF_EVENT(3, "TAPE: load display failed\n");
  return PTR_ERR(request);
 }
 request->op = TO_DIS;

 *(unsigned char *) request->cpdata = disp->cntrl;
 DBF_EVENT(5, "TAPE: display cntrl=%04x\n", disp->cntrl);
 memcpy(((unsigned char *) request->cpdata) + 1, disp->message1, 8);
 memcpy(((unsigned char *) request->cpdata) + 9, disp->message2, 8);
 ASCEBC(((unsigned char*) request->cpdata) + 1, 16);

 tape_ccw_cc(request->cpaddr, LOAD_DISPLAY, 17, request->cpdata);
 tape_ccw_end(request->cpaddr + 1, NOP, 0, ((void*)0));

 rc = tape_do_io_interruptible(device, request);
 tape_free_request(request);
 return rc;
}
