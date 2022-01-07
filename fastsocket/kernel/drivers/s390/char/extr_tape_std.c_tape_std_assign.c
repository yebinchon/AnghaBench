
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {unsigned long data; scalar_t__ expires; int function; } ;
struct tape_request {scalar_t__ cpaddr; int cpdata; int op; } ;
struct tape_device {int cdev_id; } ;


 int ASSIGN ;
 int DBF_EVENT (int,char*,int ) ;
 int HZ ;
 scalar_t__ IS_ERR (struct tape_request*) ;
 int NOP ;
 int PTR_ERR (struct tape_request*) ;
 int TO_ASSIGN ;
 int add_timer (struct timer_list*) ;
 int del_timer (struct timer_list*) ;
 int init_timer_on_stack (struct timer_list*) ;
 scalar_t__ jiffies ;
 struct tape_request* tape_alloc_request (int,int) ;
 int tape_ccw_cc (scalar_t__,int ,int,int ) ;
 int tape_ccw_end (scalar_t__,int ,int ,int *) ;
 int tape_do_io_interruptible (struct tape_device*,struct tape_request*) ;
 int tape_free_request (struct tape_request*) ;
 int tape_std_assign_timeout ;

int
tape_std_assign(struct tape_device *device)
{
 int rc;
 struct timer_list timeout;
 struct tape_request *request;

 request = tape_alloc_request(2, 11);
 if (IS_ERR(request))
  return PTR_ERR(request);

 request->op = TO_ASSIGN;
 tape_ccw_cc(request->cpaddr, ASSIGN, 11, request->cpdata);
 tape_ccw_end(request->cpaddr + 1, NOP, 0, ((void*)0));






 init_timer_on_stack(&timeout);
 timeout.function = tape_std_assign_timeout;
 timeout.data = (unsigned long) request;
 timeout.expires = jiffies + 2 * HZ;
 add_timer(&timeout);

 rc = tape_do_io_interruptible(device, request);

 del_timer(&timeout);

 if (rc != 0) {
  DBF_EVENT(3, "%08x: assign failed - device might be busy\n",
   device->cdev_id);
 } else {
  DBF_EVENT(3, "%08x: Tape assigned\n", device->cdev_id);
 }
 tape_free_request(request);
 return rc;
}
