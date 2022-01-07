
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adb_request {struct adb_request* next; scalar_t__ reply_len; scalar_t__ complete; scalar_t__ sent; } ;


 int ADBREQ_NOSEND ;
 int ADB_READREG (int,int ) ;
 int BUG_ON (int ) ;
 int adb_request (struct adb_request*,int *,int ,int,int ) ;
 int autopoll_devs ;
 int command_byte ;
 struct adb_request* current_req ;
 int ffs (int) ;
 struct adb_request* last_req ;
 int request_is_queued (struct adb_request*) ;

__attribute__((used)) static void macii_queue_poll(void)
{
 int device_mask;
 int next_device;
 static struct adb_request req;

 if (!autopoll_devs) return;

 device_mask = (1 << (((command_byte & 0xF0) >> 4) + 1)) - 1;
 if (autopoll_devs & ~device_mask)
  next_device = ffs(autopoll_devs & ~device_mask) - 1;
 else
  next_device = ffs(autopoll_devs) - 1;

 BUG_ON(request_is_queued(&req));

 adb_request(&req, ((void*)0), ADBREQ_NOSEND, 1,
             ADB_READREG(next_device, 0));

 req.sent = 0;
 req.complete = 0;
 req.reply_len = 0;
 req.next = current_req;

 if (current_req != ((void*)0)) {
  current_req = &req;
 } else {
  current_req = &req;
  last_req = &req;
 }
}
