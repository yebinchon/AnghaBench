
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct adb_request {scalar_t__ reply_len; int * reply; int * arg; } ;


 int DECLARE_COMPLETION (int ) ;
 int ams_pmu_cmd ;
 int ams_pmu_req_complete ;
 scalar_t__ pmu_request (struct adb_request*,int ,int,int ,int,int ) ;
 int req_complete ;
 int wait_for_completion (int *) ;

__attribute__((used)) static u8 ams_pmu_get_register(u8 reg)
{
 static struct adb_request req;
 DECLARE_COMPLETION(req_complete);

 req.arg = &req_complete;
 if (pmu_request(&req, ams_pmu_req_complete, 3, ams_pmu_cmd, 0x01, reg))
  return 0;

 wait_for_completion(&req_complete);

 if (req.reply_len > 0)
  return req.reply[0];
 else
  return 0;
}
