
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct request_queue {int dummy; } ;
struct TYPE_3__ {int cmd_flags; int cmd_type; } ;


 int MAXTIMEOUT ;
 scalar_t__ blk_rq_pos (TYPE_1__*) ;
 TYPE_1__* current_req ;
 int fdc_busy ;
 int is_alive (char*) ;
 int lock_fdc (int ,int ) ;
 scalar_t__ max_buffer_sectors ;
 int printk (char*,...) ;
 int process_fd_request () ;
 scalar_t__ test_bit (int ,int *) ;
 scalar_t__ usage_count ;

__attribute__((used)) static void do_fd_request(struct request_queue * q)
{
 if (max_buffer_sectors == 0) {
  printk("VFS: do_fd_request called on non-open device\n");
  return;
 }

 if (usage_count == 0) {
  printk("warning: usage count=0, current_req=%p exiting\n",
         current_req);
  printk("sect=%ld type=%x flags=%x\n",
         (long)blk_rq_pos(current_req), current_req->cmd_type,
         current_req->cmd_flags);
  return;
 }
 if (test_bit(0, &fdc_busy)) {


  is_alive("do fd request, old request running");
  return;
 }
 lock_fdc(MAXTIMEOUT, 0);
 process_fd_request();
 is_alive("do fd request");
}
