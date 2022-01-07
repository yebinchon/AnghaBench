
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adb_request {size_t* data; scalar_t__ reply_expected; } ;


 struct adb_request* current_req ;
 int data_index ;
 int data_len ;
 scalar_t__ idle ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int ** pmu_data_len ;
 scalar_t__ pmu_state ;
 scalar_t__ req_awaiting_reply ;
 int send_byte (size_t) ;
 scalar_t__ sending ;

__attribute__((used)) static void
pmu_start(void)
{
 unsigned long flags;
 struct adb_request *req;



 local_irq_save(flags);
 req = current_req;
 if (req == 0 || pmu_state != idle
     || (req->reply_expected && req_awaiting_reply))
  goto out;

 pmu_state = sending;
 data_index = 1;
 data_len = pmu_data_len[req->data[0]][0];


 send_byte(req->data[0]);

out:
 local_irq_restore(flags);
}
