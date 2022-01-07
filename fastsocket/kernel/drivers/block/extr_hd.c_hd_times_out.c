
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int queue_lock; } ;
struct TYPE_5__ {scalar_t__ errors; TYPE_1__* rq_disk; } ;
struct TYPE_4__ {char* disk_name; } ;


 int EIO ;
 scalar_t__ MAX_ERRORS ;
 int * do_hd ;
 int hd_end_request_cur (int ) ;
 TYPE_3__* hd_queue ;
 TYPE_2__* hd_req ;
 int hd_request () ;
 int printk (char*,char*) ;
 int reset ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

__attribute__((used)) static void hd_times_out(unsigned long dummy)
{
 char *name;

 do_hd = ((void*)0);

 if (!hd_req)
  return;

 spin_lock_irq(hd_queue->queue_lock);
 reset = 1;
 name = hd_req->rq_disk->disk_name;
 printk("%s: timeout\n", name);
 if (++hd_req->errors >= MAX_ERRORS) {



  hd_end_request_cur(-EIO);
 }
 hd_request();
 spin_unlock_irq(hd_queue->queue_lock);
}
