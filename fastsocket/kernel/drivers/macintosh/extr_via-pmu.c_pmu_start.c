
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adb_request {size_t* data; } ;


 struct adb_request* current_req ;
 int data_index ;
 int data_len ;
 scalar_t__ idle ;
 int ** pmu_data_len ;
 scalar_t__ pmu_state ;
 scalar_t__ req_awaiting_reply ;
 int send_byte (size_t) ;
 scalar_t__ sending ;
 int wait_for_ack () ;

__attribute__((used)) static void
pmu_start(void)
{
 struct adb_request *req;



 req = current_req;
 if (req == 0 || pmu_state != idle
     || ( req_awaiting_reply))
  return;

 pmu_state = sending;
 data_index = 1;
 data_len = pmu_data_len[req->data[0]][0];




 wait_for_ack();

 send_byte(req->data[0]);
}
